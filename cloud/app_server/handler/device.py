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

class DeviceListHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        template_variables['gen_random'] = gen_random
        
        self.render('device/device_list.html', **template_variables)

class DeviceAddHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        template_variables['gen_random'] = gen_random
        self.render('device/device_add.html', **template_variables)
    
    @tornado.web.authenticated
    @gen.coroutine
    def post(self, template_variables = {}):
        template_variables['errors']={}
        
        user_info = self.current_user
        # validate the fields
        device_id = long(self.get_argument('device_id', 0))
        
        if device_id == 0:
            template_variables['errors']['invalid_device'] = ['Invalid device']
            self.get(template_variables)
            return
        
        for device in user_info['devices']:
            if device['_id'] == device_id:
                template_variables['errors']['device_already_added'] = ['Device already added']
                self.get(template_variables)
                return
        
        # continue while validate succeed
        new_device = {
            'device_id': device_id,
            'owner_id': user_info['_id'],
            'objects': {}
        }
        
        result = yield self.application.device_info_model.new_device(new_device)
        
        # update current user
        user_info['devices'].append(new_device)
        update_current_user(user_info)
        
        self.redirect(self.get_argument('next', '/device/list'))

class DeviceViewHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, device_id, template_variables = {}):
        device_id = long(device_id)
        user_info = self.current_user
        template_variables['user_info'] = user_info
        
        # get from database, avoid inconsistent
        device = yield self.application.device_info_model.get_device(device_id)
        if not device:
            template_variables['errors']['no_device'] = ['No such device']
            self.render('device/device_detail.html', **template_variables)
            return
        
        template_variables['device'] = device
        
        for object in device.objects:
            for resource in device.objects[object].resources:
                if 'id' in device.objects[object].resources[resource]:
                    device.objects[object].resources[resource].schema = IPSO_RESOURCES[device.objects[object].resources[resource].id]
        
        template_variables['gen_random'] = gen_random
        self.render('device/device_detail.html', **template_variables)

    @tornado.web.authenticated
    @gen.coroutine
    def post(self, device_id, template_variables = {}):
        device_id = long(device_id)
        template_variables['errors']={}
        
        # get from database, avoid inconsistent
        device = yield self.application.device_info_model.get_device(device_id)
        if not device:
            template_variables['errors']['no_device'] = ['No such device']
            self.get(device_id, template_variables)
        
        config = {}
        for object in device.objects:
            for resource in device.objects[object].resources:
                if 'id' in device.objects[object].resources[resource]:
                    resource_id = device.objects[object].resources[resource].id
                    if IPSO_RESOURCES[resource_id]['Access Type'] == 'ReadWrite':
                        resource_type = IPSO_RESOURCES[resource_id].Type
                        value = self.get_argument(object + '_' + resource, None)
                        if value:
                            if resource_type == 'boolean':
                                if value =='true':
                                    config[object][resource].value = True
                                else:
                                    config[object][resource].value = False
                                device.objects[object][resource].value = config[object][resource].value
                            elif resource_type == 'number':
                                try:
                                    number = float(value)
                                except ValueError:
                                    template_variables['errors']['value_error'] = 'Not a number'
                                    yield self.get(device_id, template_variables)
                                    return

                                config[object][resource].value = number
                                device.objects[object][resource].value = number
                            elif attribute['type'] == 'integer':
                                try:
                                    number = int(value)
                                except ValueError:
                                    template_variables['errors']['value_error'] = 'Not a integer'
                                    yield self.get(device_id, template_variables)
                                    return
                            
                                config[object][resource].value = number
                                device.objects[object][resource].value = number
                            else:
                                config[object][resource].value = value
                                device.objects[object][resource].value = value

        url = 'http://' + device['server_node'] + '/app_rpc'
        
        params = {
                  'device_manager_id': device['device_manager_id'],
                  'device_id': device_id,
                  'objects': config
                 }
                  
        http_client = AsyncHTTPClient()
        
        body = json.dumps({
                           'jsonrpc': '2.0',
                           'method': 'DeviceSetResources',
                           'params': params,
                           'id': uuid.uuid4().hex,
                          });
        
        headers = {'Content-Type': 'application/json-rpc'}
        
        http_request = tornado.httpclient.HTTPRequest(url, method = 'POST', headers = headers,
                                                      body = body, request_timeout = 0)
        response = yield http_client.fetch(http_request)

        if response.error or not response.code==200:
            template_variables['errors']['config_fail'] = ['Configure failed.' + 'Error:' + response.error]
        else:
            result_json = json.loads(response.body)
            if 'result' in result_json and 'retcode' in result_json['result'] and result_json['result']['retcode'] == 0:
                yield self.application.device_info_model.update_device(device_id, {'components': device.components})
            else:
                if 'message' in result_json:
                    logging.info('config fail,%s', result_json['error_message'])
                else:
                    logging.info('config fail')
                template_variables['errors']['config_fail'] = ['Configure failed.']

        yield self.get(device_id, template_variables)


