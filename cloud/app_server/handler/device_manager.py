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

class DeviceManagerListHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        licenses = yield self.application.license_async_model.get_user_all_licenses(user_info['_id'])
        
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
        license_id = self.get_argument('id', None)
        password = self.get_argument('password', '')
        
        if license_id == None:
            template_variables['errors']['invalid_license'] = ['Invalid license']
            self.get(template_variables)
            return
        
        license = self.license_async_model.get_license(license_id, password)
        if not license:
            template_variables['errors']['incorrect_license_or_password'] = ['Incorrect license or password']
            self.get(template_variables)
            return
        
        # continue while validate succeed
        my_license_info = {
            'uid': user_info['_id'],
            'license_id': license_id,
        }
        
        license_index = self.mylicense_async_model.add_new_my_license(my_license_info)
        
    self.redirect(self.get_argument('next', '/'))

class DeviceManagerViewHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, device_id, template_variables = {}):
        device_id = long(device_id)
        user_info = self.current_user
        template_variables['user_info'] = user_info
        
        device = yield self.application.device_info_model.get_device(device_id)
        
        if not device:
            self.write_error(404)
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
        
        device = yield self.application.device_info_model.get_device(device_id)
        if not device:
            template_variables['errors']['no_device'] = ['No such device']
            self.get(device_id, template_variables)
        
        config = []
        i = 0
        for object in device.objects:
            config[i][0] = object
            config[i][1] = []
            changed = False
            for resource in device.objects[object].resources:
                if 'id' in device.objects[object].resources[resource]:
                    resource_id = device.objects[object].resources[resource].id
                    if IPSO_RESOURCES[resource_id]['Access Type'] == 'ReadWrite':
                        resource_type = IPSO_RESOURCES[resource_id].Type
                        value = self.get_argument(object + '_' + resource, None)
                        if value:
                            if resource_type == 'boolean':
                                if value =='true':
                                        real_value = True
                                    else:
                                        real_value = False
                                if real_value != device.objects[object][resource].value:
                                    changed = True
                                    device.objects[object][resource].value = real_value
                            elif resource_type == 'number':
                                try:
                                    real_value = float(value)
                                except ValueError:
                                    template_variables['errors']['value_error'] = 'Not a number'
                                    yield self.get(device_id, template_variables)
                                    return
                                if real_value != device.objects[object][resource].value:
                                    changed = True
                                    device.objects[object][resource].value = real_value
                            elif attribute['type'] == 'integer':
                                try:
                                    real_value = int(value)
                                except ValueError:
                                    template_variables['errors']['value_error'] = 'Not a integer'
                                    yield self.get(device_id, template_variables)
                                    return
                                if real_value != device.objects[object][resource].value:
                                    changed = True
                                    device.objects[object][resource].value = real_value
                            else:
                                if real_value != device.objects[object][resource].value:
                                    changed = True
                                    device.objects[object][resource].value = value
                if changed:
                    config[i][1].append([resource, device.objects[object][resource].value])

        url = 'http://' + device['server_node'] + '/device_config'
        
        params = {
                  'device_manager_id': device['device_manager_id'],
                  'device_id': device_id,
                  'device_config': config
                 }
                  
        http_client = AsyncHTTPClient()
        
        body = json.dumps({
                           'jsonrpc': '2.0',
                           'method': 'DeviceConfig',
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


