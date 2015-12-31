#!/usr/bin/env python
# coding=utf-8
#
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
import tornado.web
import json
from lib.variables import gen_random
from base import *
import time
from tornado import gen
from tornado.httpclient import AsyncHTTPClient
from lib.ipso.ipso_resources import IPSO_RESOURCES

class DeviceManagerListHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        licenses = yield self.application.license_model.get_user_all_licenses(user_info['_id'])
        
        template_variables['user_info']['licenses'] = licenses
        template_variables['gen_random'] = gen_random
        
        self.render('device_manager/device_manager_list.html', **template_variables)

class DeviceManagerAddHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        template_variables['gen_random'] = gen_random
        self.render('device_manager/device_manager_add.html', **template_variables)
    
    @tornado.web.authenticated
    @gen.coroutine
    def post(self, template_variables = {}):
        template_variables['errors']={}
        
        user_info = self.current_user
        # validate the fields
        license_id = self.get_argument('license_id', '')
        password = self.get_argument('password', '')
        
        if not license_id:
            template_variables['errors']['invalid_license'] = ['Invalid license']
            self.get(template_variables)
            return
        
        count = yield self.license_model.license_valid(license_id, password)
        if not count:
            template_variables['errors']['incorrect_license_or_password'] = ['Incorrect license or password']
            self.get(template_variables)
            return
        
        # continue while validate succeed
        my_license_info = {
            'uid': user_info['_id'],
            'license_id': license_id,
        }
        
        license_index = yield self.application.mylicense_model.add_new_my_license(my_license_info)
        
        self.redirect(self.get_argument('next', '/'))


