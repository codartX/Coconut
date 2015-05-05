#!/usr/bin/env python
# coding=utf-8
#
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
import tornado.web
import json
import lib.jsonp
from lib.variables import gen_random
from base import *
import time
from tornado import gen
from tornado.httpclient import AsyncHTTPClient
import uuid
from lib.ipso.ipso_resources import IPSO_RESOURCES

class DevicePolicyListHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, device_id, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        
        owner_id = yield self.application.device_model.get_device_owner_id(device_id)
        if owner_id != user_info['_id']:
            template_variables['error']['permission_deny'] = 'It is not your device'
        else:
            policy = yield self.application.device_policy_model.get_device_all_policy(device_id)
            template_variables['device_policy'] = policy
        
        template_variables['gen_random'] = gen_random
        
        self.render('device_policy/policy_list.html', **template_variables)

class DevicePolicyAddHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        template_variables['gen_random'] = gen_random
        self.render('device_policy/policy_add.html', **template_variables)
    
    @tornado.web.authenticated
    @gen.coroutine
    def post(self, template_variables = {}):
        template_variables['errors']={}
        
        user_info = self.current_user
        
        device_id = long(self.get_argument('device_id', 0))
        
        if device_id == 0:
            template_variables['errors']['invalid_device'] = ['Invalid device']
            self.get(template_variables)
            return
        
        for device in user_info['devices']:
            if device['_id'] == device_id:
                break
    
        if device['_id'] != device_id:
            template_variables['errors']['no_device'] = ['No such device']
            self.render('device_policy/policy_add.html', **template_variables)
        
        # continue while validate succeed
        new_policy = {
            'device_id': device_id,
            'conditions': [],
            'actions': []
        }
        
        result = yield self.application.device_policy_model.new_policy(new_policy)
        
        self.redirect(self.get_argument('next', '/device_policy/list'))

class DevicePolicyViewHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, policy_id, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        
        policy = yield self.application.device_policy_model.get_policy_by_id(policy_id)
        
        if not policy:
            template_variables['errors']['invalid_policy_id'] = ['Invalid Policy ID']
            self.render('device_policy/policy_detail.html', **template_variables)
            return
        
        template_variables['policy'] = policy
        
        template_variables['gen_random'] = gen_random
        self.render('device_policy/policy_detail.html', **template_variables)

    @tornado.web.authenticated
    @gen.coroutine
    def post(self, policy_id, template_variables = {}):
        template_variables['errors']={}
        
        policy = yield self.application.device_policy_model.get_policy_by_id(policy_id)
        
        if not policy:
            template_variables['errors']['invalid_policy_id'] = ['Invalid Policy ID']
            self.get(policy_id, template_variables)
        
        updated_policy = {
            'device_id': policy['device_id'],
            'conditions': [],
            'actions': []
        }
        
        result = yield self.application.device_policy_model.update_policy(policy_id, updated_policy)
        
        self.redirect(self.get_argument('next', '/device_policy/' + policy_id))


