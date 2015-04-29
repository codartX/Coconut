#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
import sys, threading, Queue
import time
from jsonrpclib import Server
import jsonp
import coap.coapMessage as coapMessage
import coap.coapDefines as coapDefines
import utils
import random

NEW_METHOD          = 0
INFO_METHOD         = 1
GET_CONFIG_METHOD   = 2
CONFIG_METHOD       = 3
UPGRADE_METHOD      = 4
RELOAD_METHOD       = 5
MESSAGE_METHOD      = 6
AUTH_METHOD         = 7

"""
"""

class DevicesProxy(threading.Thread):
    def __init__(self, devices_manager, websocket):
        threading.Thread.__init__(self)
        self.devices_manager = devices_manager
        self.ws = websocket
        self.transaction_id = 1
        #for device_id in self.devices_manager.devices:
        #    self.device_register(device_id, self.devices_manager.devices[device_id])

    def device_register(self, device_id, device):
        if self.ws:
            request_data = utils.number2buf(device_id, 8) + utils.number2buf(NEW_METHOD, 0) + list(jsonp.print_JSON(device))
            request = coapMessage.buildMessage(msgtype = coapDefines.TYPE_NON,
                                               token = self._get_token(),
                                               code = coapDefines.METHOD_POST,
                                               messageId = self.transaction_id,
                                               payload = request_data)
            self.ws.send(request)
            self.transaction_id += 1

    def device_info(self, device_id, device_info):
        if self.ws:
            request_data = utils.number2buf(device_id, 8) + utils.number2buf(INFO_METHOD, 1) + jsonp.print_JSON(device_info)
            request = coapMessage.buildMessage(msgtype = coapDefines.TYPE_NON,
                                               token = self._get_token(),
                                               code = coapDefines.METHOD_POST,
                                               messageId = self.transaction_id,
                                               payload = request_data)
            self.ws.send(request)
            self.transaction_id += 1

    def _get_token(self):
        token = random.randint(0x00,0xff)
        return token

    def run(self):
        #self.device_register(self.devices_manager.own_device.device_id, {'objects': self.devices_manager.own_device.objects})
        while True:
            self.ws.send('Hello!')
            #self.devices_manager.update_own_device()
            #self.device_info(self.devices_manager.own_device.device_id, {'objects': self.devices_manager.own_device.objects})
            time.sleep(60)

