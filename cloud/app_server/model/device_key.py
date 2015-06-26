#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from tornado import gen

class DeviceKeyModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = 'device_key'
    
    @gen.coroutine
    def new_device_key(self, device_key):
        result = yield self.db.device_key.insert(device)
        raise gen.Return(result)
    
    @gen.coroutine
    def get_device_key(self, device_id):
        device_key = yield self.db.device_key.find_one({'device_id': device_id})
        raise gen.Return(device_key)
    
