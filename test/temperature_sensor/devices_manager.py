#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
import time
import random
import utils

class DevicesManager():
    def __init__(self, license_id):
        self.id = license_id
        self.own_device = {
                           'device_id': 0x0FEA5B79A0B03E7D,
                           'objects':{
                               'Device Information':{
                                   'id':3100,
                                   'resources':{
                                       'Manufacturer':{
                                           'id':5100,
                                           'value':'Cisco'
                                       },
                                       'Model':{
                                           'id':5101,
                                           'value':'N80'
                                       },
                                       'Hardware Version':{
                                           'id':5102,
                                           'value':'1.0'
                                       },
                                       'Software Version':{
                                           'id':5103,
                                           'value':'1.0'
                                       },
                                       'Serial':{
                                           'id':5104,
                                           'value':'0FEA5B79A0B03E7D'
                                       },
                                       'Device Name':{
                                           'id':5105,
                                           'value':'Temperature Sensor'
                                       },
                                       'Up Time':{
                                           'id':5109,
                                           'value':time.time()
                                       },
                                   }
                               },
                               'Temperature Sensor':{
                                   'id':3303,
                                   'resources':{
                                       'Sensor Value':{
                                           'id':5700,
                                           'value':self.get_temp()
                                       }
                                   }
                               }
                           }
                          }
        self.devices = {}
        self.add_a_device(self.own_device['device_id'], self.own_device)

    def get_temp(self):
        return 20 + random.randint(-10, 10)

    def update_own_device(self):
        self.own_device.objects['Temperature Sensor'].resources['Sensor Value'].value = self.get_temp()

    def add_a_device(self, device_id, device):
        self.devices[device_id] = device

    def device_config(self, device_id, device_config):
        logging.info('config device, device id:%s, config:%s', device_id, device_config)
        if device_id in self.devices:
            device = self.devices[device_id]
            utils.merge(device, device_config)
            logging.info('device:', device)

        return True

    def device_reload(device_id):
        return True


