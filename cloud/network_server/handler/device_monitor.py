#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
import json
import lib.jsonp
import jsonschema

import tornado.websocket as websocket
from tornado import gen

import time
import lib.ws_message.message as m
import lib.ws_message.msg_define as d
import lib.error_defines as error
import lib.utils

clients = dict()

MAX_TRANSACTION_ID = 1 << 16

class WebSocketHandler(websocket.WebSocketHandler):
    @gen.coroutine
    def device_new(self, device_id, parameters):
        logging.info('new_device, client id:%s', self.id)
        
        is_device_exist = yield self.application.device_info_model.device_exist(device_id)
        if is_device_exist:
            logging.error('Device already exist')
            raise gen.Return([error.DEVICE_DUPLICATE])

        #Validate parameters
        #TODO
        
        device_info = {}
        
        device_info['objects'] = {}
        for object in parameters[0]:
            device_info['objects'][object[1]] = {'id': object[0], 'resources': {}}
            for resource in object[2]:
                device_info['objects'][object[1]]['resources'][resource[1]] = {'id': resource[0], 'value': resource[2]}
    
        if parameters[1]:
            device_info['timestamp'] = parameters[1]
        else:
            device_info['timestamp'] = time.time()

        parameters['device_id'] = device_id
        device_info['device_manager_id'] = self.id
        device_info['server_node'] = self.application.server_node
        result = yield self.application.device_info_model.new_device(parameters)
        #TODO check result
        
        #success response
        raise gen.Return([error.SUCCESS])
    
    @gen.coroutine
    def device_info(self, device_id, parameters):
        logging.info('device_info, client id:%s', self.id)
    
        device_info = yield self.application.device_info_model.get_device(device_id)
                                                        
        if not device_info:
            logging.error('No such device')
            raise gen.Return([error.DEVICE_NON_EXIST])
        
        #TODO validate parameters
        new_objects = device_info.objects
        
        for object in parameters[0]:
            for resource in object[1]:
                device_info['objects'][object[0]]['resources'][resource[0]]['value'] = resource[1]
        
        if parameters[1]:
            device_info['timestamp'] = parameters[1]
        else:
            device_info['timestamp'] = time.time()

        #write to mongodb
        device_info['device_manager_id'] = self.id
        device_info['server_node'] = self.application.server_node
        device_info['objects'] = new_objects

        retval = yield self.application.device_info_model.update_device(device_id, device_info)
        if not retval:
            logging.error('Update device fail')
            raise gen.Return([error.DATABASE_ERROR])
        
        #if is_info_changed:
        #    retval = yield self.application.device_info_history_model.add_new_device_info(device_id, parameters)
        #    if not retval:
        #        logging.error('Device history info add fail')
        #        raise gen.Return(error.DATABASE_ERROR)
                    
        #success response
        raise gen.Return([error.SUCCESS])
    
    def device_get_info(self, device_id, parameters):
        logging.info('device_get_info')
        device_manager_id = yield self.application.device_info_model.get_device_manager_id(device_id)
        
        if device_manager_id:
            if device_manager_id == self.id:
                retval = self.send_message(msgtype = d.TYPE_REQUEST,
                                           device_id = device_id,
                                           method = d.METHOD_GET_INFO,
                                           parameters = json.dumps(device_config, separators=(',',':')),
                                           callback = callback)
                    
                if not retval:
                    callback({
                                'result': error.INVALID_TRANSACTION_ID,
                                'message': 'Transaction ID error'
                            })
        
            else:
                callback({
                             'result': error.PERMISSION_DENY,
                             'message': 'Permission deny'
                         })
            
            else:
            callback({
                         'result': error.DEVICE_NON_EXIST,
                         'message': 'Device do not exist'
                     })
    
    @gen.coroutine
    def device_config(self, device_manager_id, device_id, device_config, callback):
        logging.info('config_device,device_manager_id:%s device id:%lu device config:%s',
                     device_manager_id, device_id, str(device_config))

        device_manager_id = yield self.application.device_info_model.get_device_manager_id(device_id)
        
        if device_manager_id:
            if device_manager_id == self.id:
                retval = self.send_message(msgtype = d.TYPE_REQUEST,
                                           device_id = device_id,
                                           method = d.METHOD_CONFIG,
                                           parameters = json.dumps(device_config, separators=(',',':')),
                                           callback = callback)
            
                if not retval:
                    callback({
                                 'result': error.INVALID_TRANSACTION_ID,
                                 'message': 'Transaction ID error'
                            })
            
            else:
                callback({
                            'result': error.PERMISSION_DENY,
                            'message': 'Permission deny'
                        })
        
        else:
            callback({
                        'result': error.DEVICE_NON_EXIST,
                        'message': 'Device do not exist'
                    })

    def device_get_policy(self, device_id, parameters):
        logging.info('device_get_policy')
        device_manager_id = yield self.application.device_info_model.get_device_manager_id(device_id)
        
        if device_manager_id:
            if device_manager_id == self.id:
                retval = self.send_message(msgtype = d.TYPE_REQUEST,
                                           device_id = device_id,
                                           method = d.METHOD_GET_POLICY,
                                           parameters = json.dumps(device_config, separators=(',',':')),
                                           callback = callback)
                    
                if not retval:
                    callback({
                                'result': error.INVALID_TRANSACTION_ID,
                                'message': 'Transaction ID error'
                            })
        
            else:
                callback({
                         'result': error.PERMISSION_DENY,
                         'message': 'Permission deny'
                        })

        else:
            callback({
                        'result': error.DEVICE_NON_EXIST,
                        'message': 'Device do not exist'
                    })

    @gen.coroutine
    def device_set_policy(self, device_manager_id, device_id, policy, callback):
        logging.info('config_device,device_manager_id:%s device id:%lu device config:%s',
                     device_manager_id, device_id, str(device_config))

        device_manager_id = yield self.application.device_info_model.get_device_manager_id(device_id)
                     
        if device_manager_id:
            if device_manager_id == self.id:
                retval = self.send_message(msgtype = d.TYPE_REQUEST,
                                           device_id = device_id,
                                           method = d.METHOD_SET_POLICY,
                                           parameters = json.dumps(policy, separators=(',',':')),
                                           callback = callback)
            
                if not retval:
                    callback({
                                 'result': error.INVALID_TRANSACTION_ID,
                                 'message': 'Transaction ID error'
                             })
            else:
                callback({
                             'result': error.PERMISSION_DENY,
                             'message': 'Permission deny'
                        })
                                 
        else:
            callback({
                         'result': error.DEVICE_NON_EXIST,
                         'message': 'Device do not exist'
                    })

    def device_message(self, device_id, parameters):
        logging.info('device_message')

    def device_auth(self, device_id, parameters):
        logging.info('device_auth')

    def get_msg_id(self):
        self.transaction_id += 1
        try_times = MAX_TRANSACTION_ID
        while (not self.transaction_id in self.session) and try_times:
            if self.transaction_id >= MAX_TRANSACTION_ID:
                self.transaction_id = 0
            else:
                self.transaction_id += 1
            try_times -= 1
    
        if not try_times:
            return None
    
        return self.transaction_id

    def send_message(self, msgtype, device_id, method, parameters, callback):
        msg_id = self.get_msg_id()
        if msg_id is None:
            return False
        
        device_id_buf = lib.utils.number2buf(device_id,8)
        
        msg = m.build_message(msgtype = msgtype,
                              message_id = msg_id
                              device_id = device_id_buf,
                              method = method,
                              parameters = parameters)

        if callback:
            self.session[msg_id] = callback

        self.write_message(msg)
        
        return True

    def open(self, *args):
        self.id = self.get_argument('Id')
        self.session = {}
        self.transaction_id = 0
        self.stream.set_nodelay(True)
        #TODO validate id
        logging.info('New client connected, id:%s', str(self.id))
        clients[self.id] = {'id': self.id, 'object': self}
    
    @gen.coroutine
    def on_message(self, message):
        try:
            retval = m.parseMessage(message)
        except Exception as e:
            logging.error('malformed message {0}: {1}'.format(lib.utils.formatBuf(message),str(e)))
            return
                
        msg_type = retval['msg_type']
        msg_id = retval['message_id']
        parameters = retval['parameters']
        device_id = ntohl(retval['device_id'])
        method = retval['method']
        data = retval['parameters']

        logging.info('msg_type %d, msg_id %d, session_id %d, device_id %x, method %d',
                     msg_type, msg_id, device_id, method)

        try:
            parameters = json.loads(data)
        except Exception as e:
            logging.error('Invalid parameters format: {0}, {1}'.format(data, str(e)))
            return

        if msg_type == d.TYPE_REQUEST:
            #request
            result = None
            if method == d.METHOD_NEW:
                result = yield self.device_new(device_id, parameters)
            elif method == d.METHOD_INFO:
                result = yield self.device_info(device_id, parameters)
            elif method == d.METHOD_GET_INFO:
                result = yield self.device_get_info(device_id, parameters)
            elif method == d.METHOD_GET_POLICY:
                result = yield self.device_get_policy(device_id, parameters)
            elif method == d.METHOD_MESSAGE:
                result = yield self.device_message(device_id, parameters)
            elif method == d.METHOD_AUTH:
                result = yield self.device_auth(device_id, parameters)
            else:
                logging.error('Unacceptable method:%d', method)

            if result:
                result = json.dumps(result, separators=(',',':'))
                logging.info('request handle result:%s', result)
                response = m.build_message(msgtype = d.TYPE_RESPONSE,
                                           message_id = msg_id,
                                           device_id = retval['device_id'],
                                           method = method,
                                           parameters = result)
                self.write_message(response)

        elif msg_type == d.TYPE_RESPONSE:
            #response
            if msg_id in self.session:
                self.session[msg_id]({'result': parameters[0], 'message': parameters[1]})
                logging.info('del this transaction')
                del self.session[msg_id]
            else:
                logging.info('transaction non-exist, drop')
        else:
            logging.error('Unacceptable message message type:%d', msg_type)

    def on_close(self):
        if self.id in clients:
            logging.info('WebSocket client(%s) disconnected', str(self.id))
            del clients[self.id]
