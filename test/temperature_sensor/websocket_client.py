#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
import websocket

import json
import jsonp
import jsonschema

import coap.coapMessage as coapMessage
import coap.coapDefines as coapDefines

from devices_manager import DevicesManager
from devices_proxy import DevicesProxy

NEW_METHOD          = 0
INFO_METHOD         = 1
GET_CONFIG_METHOD   = 2
CONFIG_METHOD       = 3
UPGRADE_METHOD      = 4
RELOAD_METHOD       = 5
MESSAGE_METHOD      = 6
AUTH_METHOD         = 7

devices_manager = None
devices_proxy = None

license_serial_num = 'abcd1236'

def on_message(ws, message):
    logging.info('Recv message:%s', message)
    
    retval = coapMessage.parseMessage(message)

    msg_id = retval['messageId']
    token = retval['token']
    payload = retval['payload']
    device_id = ntohl(long(payload[0:7]))
    method = int(payload[8])
    data = payload[9:]
        
    logging.info('code %d, msg_id %d, device_id %x, method %d',
                 retval['code'], retval['messageId'], device_id, method)
    logging.info('Message data:%s', data)
    parameters = None
    parameters = json.loads(data)
    if parameters == None:
        logging.error('Invalid message parameters, Drop')
        return

    '''
    code class can indicate a request (0), a success
    response (2), a client error response (4), or a server error
    response (5).  (All other class values are reserved.)
    '''
    code_class = retval['code'] >> 5
    if code_class == 0:
        #request
        result = None
        if method == CONFIG_METHOD:
            result = devices_manager.device_config(device_id, parameters)
        elif method == RELOAD_METHOD:
            result = devices_manager.device_reload(device_id)
        else:
            logging.error('Unacceptable method:%d', method)

        if retval['type'] == TYPE_CON:
            if result:
                result = json.dumps(result, separators=(',',':'))

            response_data = payload[0:8] + result
            response = coapMessage.buildMessage(msgtype = coapDefines.TYPE_ACK,
                                                token = token,
                                                code = (0x2 << 5 | 0x4),
                                                messageId = msg_id,
                                                payload = response_data)
            self.write_message(response)
        else:
            logging.info('Message result:%s', result)

    elif code_class == 2 or code_class == 4 or code_class == 5:
        #response
        logging.info('Resonpse received')
    else:
        logging.error('Unacceptable message code class:%d', code_class)

def on_error(ws, error):
    logging.error('websocket error:%s', error)

def on_close(ws):
    logging.info('### closed ###')

def on_open(ws):
    devices_proxy = DevicesProxy(devices_manager, ws)
    devices_proxy.start()

if __name__ == '__main__':
    websocket.enableTrace(True)
    
    devices_manager = DevicesManager(license_serial_num)
    
    ws = websocket.WebSocketApp('ws://www.linkio.me:9999/device_monitor?Id=' + license_serial_num,
    #ws = websocket.WebSocketApp('ws://127.0.0.1:9999/device_monitor?Id=' + license_serial_num,
                                on_message = on_message,
                                on_error = on_error,
                                on_close = on_close)
    ws.on_open = on_open
    ws.run_forever()
