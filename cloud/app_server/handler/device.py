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
from lib.ipso.ipso_objects import IPSO_OBJECTS
import lib.error_defines as error
from bson.objectid import ObjectId

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
        user_info = self.current_user
        template_variables['user_info'] = user_info

        try:
            template_variables['errors']=[]
            
            # validate the fields
            device_id = self.get_argument('device_id', '')
            serial_number = self.get_argument('serial_number', '')

            template_variables['device_id'] = device_id
            template_variables['serial_number'] = serial_number
            
            if not device_id or not serial_number:
                template_variables['errors'].append('Invalid device id or serial number')
                self.get(template_variables)
                return
            
            for device in user_info['devices']:
                if device['device_id'] == device_id:
                    template_variables['errors'].append('Device already added')
                    self.get(template_variables)
                    return
            
            device = yield self.application.device_info_model.get_device(device_id)
            if device:
                template_variables['errors'].append('Device already added by others')
                self.get(template_variables)
                return
            
            device = yield self.application.device_factory_info_model.get_device_factory_info(device_id)
            if not device or (device and device['serial_number'] != serial_number):
                template_variables['errors'].append("Device doesn't exist or serial number error")
                self.get(template_variables)
                return
            
            # continue while validate succeed
            new_device = {
                'device_id': device_id,
                'owner_id': ObjectId(user_info['_id']),
                'objects': {}
            }
            
            result = yield self.application.device_info_model.new_device(new_device)
            
            # update current user
            user_info['devices'].append(new_device)
            self.update_current_user(user_info)
            
            self.redirect(self.get_argument('next', '/'))
        except Exception,e:
            logging.error('Add device fail:%s' % str(e))
            self.render('500.html', **template_variables)

class DeviceViewHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, device_id, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
            
        try:
            # get from database, avoid inconsistent
            device = yield self.application.device_info_model.get_device(device_id)
            if not device:
                self.render('404.html', **template_variables)
                return
            
            template_variables['device'] = device
            template_variables['objects_schema'] = IPSO_OBJECTS
            template_variables['resources_schema'] = IPSO_RESOURCES
            
            template_variables['gen_random'] = gen_random
            self.render('device/device_detail.html', **template_variables)
        except Exception, e:
            logging.error('Device detail handle fail:%s' % str(e))
            self.render('500.html', **template_variables)

    @tornado.web.authenticated
    @gen.coroutine
    def post(self, device_id, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
            
        try:
            template_variables['errors'] = []
            
            # get from database, avoid inconsistent
            device = yield self.application.device_info_model.get_device(device_id)
            if not device:
                self.render('404.html', **template_variables)
                return
            
            config = {}
            for object in device['objects']:
                for resource_id in device['objects'][object]['resources']:
                    if IPSO_RESOURCES[resource_id]['Access Type'] == 'ReadWrite':
                        resource_type = IPSO_RESOURCES[resource_id]['Type']
                        value = self.get_argument(object + '_' + resource_id, '')
                        if str(device.objects[object]['resources'][resource_id]) == value:
                            continue
                        if not config[object]:
                            config[object] = {}
                        if resource_type == 'boolean':
                            if value =='True':
                                config[object][resource_id] = True
                            else:
                                config[object][resource_id] = False
                            device.objects[object]['resources'][resource_id] = config[object][resource_id]
                        elif resource_type == 'Float':
                            try:
                                number = float(value)
                            except ValueError:
                                template_variables['errors'].append('%s %d is not a number' % (object, resource_id))
                                yield self.get(device_id, template_variables)
                                return

                            config[object][resource_id] = number
                            device.objects[object]['resources'][resource_id] = number
                        elif attribute['type'] == 'integer':
                            try:
                                number = int(value)
                            except ValueError:
                                template_variables['errors'].append('%s %d is not a integer' % (object, resource_id))
                                yield self.get(device_id, template_variables)
                                return
                        
                            config[object][resource_id] = number
                            device.objects[object]['resources'][resource_id] = number
                        else:
                            config[object][resource_id] = value
                            device.objects[object]['resources'][resource_id] = value

            if not config:
                yield self.get(device_id, template_variables)
                return

            if not device['server_node']:
                template_variables['errors'].append("Device's gateway not found")
                yield self.get(device_id, template_variables)
                return

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
                template_variables['errors'].append('Configure failed.' + 'Error:' + response.error)
            else:
                result_json = json.loads(response.body)
                if 'result' in result_json and result_json['result'] == error.SUCCESS:
                    yield self.application.device_info_model.update_device(device_id, {'objects': device['objects']})
                else:
                    if 'message' in result_json:
                        logging.info('config fail,%s', result_json['error_message'])
                    else:
                        logging.info('config fail')
                    template_variables['errors'].append('Configure failed.')

            yield self.get(device_id, template_variables)
        except Exception, e:
            logging.error('Edit device fail:%s' % str(e))
            self.render('500.html', **template_variables)

