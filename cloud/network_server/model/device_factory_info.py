#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from tornado import gen

class DeviceFactoryInfoModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = 'device_factory_info'
    
    @gen.coroutine
    def get_device_factory_info(self, device_id):
        device = yield self.db.device_factory_info.find_one({'device_id': device_id})
        raise gen.Return(device)
    
