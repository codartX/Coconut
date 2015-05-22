#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging

from tornado import gen
from tornadorpc.json import JSONRPCHandler
from tornadorpc import async

import json
import lib.jsonp
import jsonschema

from device_monitor import clients

import lib.error_defines as error

class AppRPCHandler(JSONRPCHandler):
    @async
    def DeviceSetResources(self, device_manager_id, device_id, device_config):
        """
        """
        logging.info("DeviceSetResources rpc call, device_manager_id:%s device_id:%lu device_config:%s",
                     device_manager_id, device_id, str(device_config))
        if device_manager_id in clients:
            clients[device_manager_id]["object"].device_config(device_manager_id, device_id,
                                                               device_config, self._handle_response)
        else:
            logging.info("no such clients:%s", device_manager_id)
            self._handle_response({
                                  "result": error.DEVICE_NON_EXIST,
                                  "message": "Device is not connected"
                                  })

    @async
    def DeviceSetPolicy(self, device_manager_id, device_id, policy):
        """
        """
        logging.info("DeviceSetPolicy rpc call, device_manager_id:%s device_id:%lu policy:%s",
                     device_manager_id, device_class, device_id, str(policy))
        if device_manager_id in clients:
            clients[device_manager_id]["object"].device_set_policy(device_manager_id, device_id,
                                                                   policy, self._handle_response)
        else:
            logging.info("no such clients:%s", device_manager_id)
            self._handle_response({
                                      "result": error.DEVICE_NON_EXIST,
                                      "message": "Device is not connected"
                                 })
                         
    def _handle_response(self, response):
        logging.info("Response rpc:%s", response)
        self.result(response)









