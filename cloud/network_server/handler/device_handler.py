#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
import json
import jsonschema

import tornado.websocket as websocket
from tornado import gen

import time
import lib.ws_message.message as m
import lib.ws_message.msg_define as d
import lib.errorDefines as error
import lib.utils

from Crypto.Cipher import AES
import binascii 

clients = dict()

MAX_TRANSACTION_ID = 1 << 16

current_milli_time = lambda: int(round(time.time() * 1000))

class WebSocketHandler(websocket.WebSocketHandler):
    @gen.coroutine
    def device_new(self, device_id, parameters):
        logging.info('new_device, client id:%s, para:%s', self.id, parameters)
        
        device_info = yield self.application.device_info_model.get_device(device_id)
        if not device_info:
            #TODO, maybe send config to the device
            logging.error('Device not added')
            raise gen.Return([error.PERMISSION_DENY])

        if device_id != device_info['device_id']:
            logging.error('Device ID not same')
            raise gen.Return([error.DEVICE_NON_EXIST])

        license = clients[self.id]['license']
        
        if license['owner_id'] != device_info['owner_id']:
            logging.error('Device not yours')
            raise gen.Return([error.PERMISSION_DENY])

        #Validate parameters
        #TODO
        
        #if device_info['objects']:
        #    logging.error('Device already registered')
        #    raise gen.Return([error.DEVICE_DUPLICATE])
        
        update_device_info = {}
        update_device_info['objects'] = {}
        try:
            for object in parameters[0]:
                update_device_info['objects'][object[1]] = {'id': str(object[0]), 'resources': {}}
                for resource in object[2]:
                    update_device_info['objects'][object[1]]['resources'][str(resource[0])] = resource[1]
        except Exception, e:
            logging.error(e)
            raise gen.Return([error.INVALID_MSG_FMT])
    
        if len(parameters) > 1:
            update_device_info['timestamp'] = int(parameters[1])
        else:
            update_device_info['timestamp'] = int(time.time())

        update_device_info['device_manager_id'] = self.id
        update_device_info['server_node'] = self.application.server_node
        result = yield self.application.device_info_model.update_device(device_id, update_device_info)
        #TODO check result
        
        #success response
        raise gen.Return([error.SUCCESS])
    
    def device_info_format(self, device_info):
        #re-format device info json, compress data
        return
    
    @gen.coroutine
    def device_get_config(self, device_id, parameters):
        logging.info('device_get_config, client id:%s', self.id)
        
        device_info = yield self.application.device_info_model.get_device(device_id)
        
        if not device_info:
            logging.error('No such device')
            raise gen.Return([error.DEVICE_NON_EXIST])
        
        license = clients[self.id]['license']
        if license['owner_id'] != device_info['owner_id']:
            logging.error('Device not yours')
            raise gen.Return([error.PERMISSION_DENY])
        
        raise gen.Return([error.SUCCESS, device_info_format(device_info)])
    
    @gen.coroutine
    def device_report(self, device_id, parameters):
        logging.info('device_report, client id:%s', self.id)
    
        device_info = yield self.application.device_info_model.get_device(device_id)
                                                        
        if not device_info:
            logging.error('No such device')
            raise gen.Return([error.DEVICE_NON_EXIST])

        license = clients[self.id]['license']
        if license['owner_id'] != device_info['owner_id']:
            logging.error('Device not yours')
            raise gen.Return([error.PERMISSION_DENY])
        
        try:
            stats = {}
            for object in parameters[0]:
                device_info['objects'][object[0]]['resources']['5700'] = object[1]
                stats[object[0]] = object[1]
        except Exception, e:
            logging.error(e)
            raise gen.Return([error.INVALID_MSG_FMT])
        
        if len(parameters) > 1:
            device_info['timestamp'] = int(parameters[1])
        else:
            device_info['timestamp'] = current_milli_time()

        #write to mongodb
        #TODO check device manager owner with device owner
        device_info['device_manager_id'] = self.id
        device_info['server_node'] = self.application.server_node

        retval = yield self.application.device_info_model.update_device(device_id, device_info)
        if not retval:
            logging.error('Update device fail')
            raise gen.Return([error.DATABASE_ERROR])
        
        retval = yield self.application.device_stats_model.add_new_device_stats(device_id, stats, device_info['timestamp'])
        if not retval:
            logging.error('Device history info add fail')
            raise gen.Return(error.DATABASE_ERROR)
                    
        #success response
        raise gen.Return([error.SUCCESS])
    
    @gen.coroutine
    def device_log(self, device_id, parameters):
        logging.info('device_log, client id:%s', self.id)
        
        device_info = yield self.application.device_info_model.get_device(device_id)
        if not device_info:
            logging.error('Device not exist')
            raise gen.Return([error.DEVICE_NON_EXIST])
        
        license = clients[self.id]['license']
        if license['owner_id'] != device_info['owner_id']:
            logging.error('Device not yours')
            raise gen.Return([error.PERMISSION_DENY])
        
        #Validate parameters
        #TODO
        
        try:
            timestamp = parameters[2]
        except IndexError:
            timestamp = time.time()
        
        result = yield self.application.device_log_model.new_device_log(device_id, parameters[0], parameters[1], timestamp)

        #TODO check result
        
        #success response
        raise gen.Return([error.SUCCESS])

    @gen.coroutine
    def device_auth(self, device_id, parameters):
        logging.info('device_auth')
        device_factory_info = yield self.application.device_factory_info_model.get_device_factory_info(device_id)
        if not device_factory_info:
            logging.error('Device not exist')
            raise gen.Return([error.DEVICE_NON_EXIST])
        
        device_info = yield self.application.device_info_model.get_device(device_id)
        if not device_info:
            logging.error('Device not added')
            raise gen.Return([error.DEVICE_NON_EXIST])
        
        license = clients[self.id]['license']
        if license['owner_id'] != device_info['owner_id']:
            logging.error('Device not yours')
            raise gen.Return([error.PERMISSION_DENY])
        
        if parameters[0] == 1:
            password_decoded = self.application.private_key.decrypt(parameters[1].decode('hex')).encode('hex')
        else:
            password_decoded = parameters[1]
        
        if password_decoded == device_factory_info['password']:
            raise gen.Return([error.SUCCESS, password_decoded])
        else:
            logging.error('Device key invalid')
            raise gen.Return([error.AUTH_FAIL])

    #############################################################

    @gen.coroutine
    def device_get_resources(self,device_manager_id, device_id, parameters, callback):
        logging.info('device_get_resources')
        
        #re-format
        config = []
        if parameters:
            for object in parameters:
                config.append([object, []])
                for resource in parameters[object]:
                    config[-1][1].append([resource, parameters[object][resource]])
        else:
            callback({
                         'result': error.INVALID_RESOURCE,
                         'message': 'Invalid parameters'
                     })
    
        device_manager_id = yield self.application.device_info_model.get_device_manager_id(device_id)
    
        if device_manager_id:
            if device_manager_id == self.id:
                retval = self.send_message(msgtype = d.TYPE_REQUEST,
                                           device_id = device_id,
                                           method = d.METHOD_GET_RESOURCES,
                                           parameters = json.dumps(config),
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
    def device_set_resources(self, device_manager_id, device_id, parameters, callback):
        logging.info('device_set_resources,device_manager_id:%s device id:%lu device config:%s',
                     device_manager_id, device_id, str(device_config))

        #re-format
        config = []
        if parameters:
            for object in parameters:
                config.append([object, []])
                for resource in parameters[object]:
                    config[-1][1].append([resource, parameters[object][resource]])
        else:
            callback({
                         'result': error.INVALID_RESOURCE,
                         'message': 'Invalid parameters'
                     })

        device_manager_id = yield self.application.device_info_model.get_device_manager_id(device_id)
        
        if device_manager_id:
            if device_manager_id == self.id:
                retval = self.send_message(msgtype = d.TYPE_REQUEST,
                                           device_id = device_id,
                                           method = d.METHOD_SET_RESOURCES,
                                           parameters = json.dumps(config),
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
    def device_get_policy(self, device_manager_id, device_id, policy, callback):
        logging.info('device_get_policy')
        device_manager_id = yield self.application.device_info_model.get_device_manager_id(device_id)
        
        if device_manager_id:
            if device_manager_id == self.id:
                retval = self.send_message(msgtype = d.TYPE_REQUEST,
                                           device_id = device_id,
                                           method = d.METHOD_GET_POLICY,
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

    @gen.coroutine
    def device_discover(self, device_id):
        logging.info('config_device,device_manager_id:%s device id:%lu device config:%s',
        device_manager_id, device_id, str(device_config))
            
        device_manager_id = yield self.application.device_info_model.get_device_manager_id(device_id)
                     
        if device_manager_id:
            if device_manager_id == self.id:
                retval = self.send_message(msgtype = d.TYPE_REQUEST,
                                           device_id = device_id,
                                           method = d.METHOD_NEW_DEVICE,
                                           parameters = [],
                                           callback = None)
                                 
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
                              message_id = msg_id,
                              device_id = device_id_buf,
                              method = method,
                              parameters = parameters)

        if callback:
            self.session[msg_id] = callback

        self.write_message(msg, binary=True)
        
        return True

    @gen.coroutine
    def open(self, *args):
        self.id = self.get_argument('Id', None)
        if self.id is None:
            return

        self.session = {}
        self.transaction_id = 0
        self.stream.set_nodelay(True)
        
        try:
            license = yield self.application.license_model.get_license(self.id)
            if not license:
                self.close()
                return
            mylicense = yield self.application.mylicense_model.get_my_license_by_license_id(self.id)
            if not mylicense:
                self.close()
                return
            logging.info('New client connected, id:%s', str(self.id))
            license['owner_id'] = mylicense['uid']
            clients[self.id] = {'id': self.id, 'object': self, 'license': license}
        except Exception as e:
            lib.utils.PrintException() 
            logging.error('websocket connection error: %s' % str(e))
            return
    
    @gen.coroutine
    def on_message(self, message):
        try:
            retval = m.parse_message(message)
        except Exception, e:
            #lib.utils.PrintException() 
            #logging.error(e)
            return
                
        msg_type = retval['msg_type']
        msg_id = retval['message_id']
        parameters = retval['parameters']
        device_id = binascii.b2a_hex(retval['device_id'])
        method = retval['method']
        data = retval['parameters']

        logging.info('msg_type %d, msg_id %d, device_id %s, method %d, data:%s, data len:%d',
                     msg_type, msg_id, device_id, method, data, len(data))

        try:
            parameters = json.loads(data)
        except Exception as e:
            lib.utils.PrintException() 
            logging.error('Invalid parameters format: {0}, {1}'.format(data, str(e)))
            return

        if msg_type == d.TYPE_REQUEST:
            try:
                #request
                result = None
                if method == d.METHOD_NEW_DEVICE:
                    result = yield self.device_new(device_id, parameters)
                elif method == d.METHOD_GET_CONFIG:
                    result = yield self.device_get_config(device_id, parameters)
                elif method == d.METHOD_LOG:
                    result = yield self.device_log(device_id, parameters)
                elif method == d.METHOD_AUTH:
                    result = yield self.device_auth(device_id, parameters)
                elif method == d.METHOD_REPORT:
                    result = yield self.device_report(device_id, parameters)
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
                    self.write_message(response, binary=True)
            except Exception as e:
                lib.utils.PrintException() 
                logging.error('Request message handle error: %s' % str(e))
                return

        elif msg_type == d.TYPE_RESPONSE:
            try:
                #response
                if msg_id in self.session:
                    self.session[msg_id]({'result': parameters[0], 'message': parameters[1]})
                    logging.info('del this transaction')
                    del self.session[msg_id]
                else:
                    logging.info('transaction non-exist, drop')
            except Exception as e:
                lib.utils.PrintException() 
                logging.error('Response message handle error: %s' % str(e))
                return
        else:
            logging.error('Unacceptable message message type:%d', msg_type)
            return

    def on_close(self):
        if self.id in clients:
            logging.info('WebSocket client(%s) disconnected', str(self.id))
            del clients[self.id]
