#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
from tornado import gen

class DeviceInfoModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = 'device_info'
    
    @gen.coroutine
    def new_device(self, device):
        result = yield self.db.device_info.insert(device)
        raise gen.Return(result)
    
    @gen.coroutine
    def device_exist(self, device_id):
        result = yield self.db.device_info.find_one({'device_id': device_id}).limit(1).size()
        raise gen.Return(result)
    
    @gen.coroutine
    def get_device_by_id(self, id):
        device = yield self.db.device_info.find_one({'_id': id})
        raise gen.Return(device)
    
    @gen.coroutine
    def get_device(self, device_id):
        device = yield self.db.device_info.find_one({'device_id': device_id})
        raise gen.Return(device)
    
    @gen.coroutine
    def get_device_manager_id(self, device_id):
        device_manager_id = yield self.db.device_info.find_one({'device_id': device_id},
                                                               {'_id': 0, 'device_manager_id': 1})
        raise gen.Return(device_manager_id)
    
    @gen.coroutine
    def get_device_object(self, device_id, object_name):
        object = yield self.db.device_info.find_one({
                                                        '$and': [
                                                            {'device_id': device_id},
                                                            {'objects.' + str(object_name): { '$exists': True }},
                                                        ]
                                                    },
                                                    {'_id': 0, 'objects.' + str(object_name): 1})
        raise gen.Return(object)
    
    @gen.coroutine
    def get_device_resource(self, device_id, object_name, resource_name):
        resource = yield self.db.device_info.find_one({
                                                    '$and': [
                                                             {'device_id': device_id},
                                                             {'objects.' + str(object_name) + str(resource_name): { '$exists': True }},
                                                             ]
                                                    },
                                                    {'_id': 0, 'objects.' + str(object_name) + str(resource_name): 1})
        raise gen.Return(resource)
    
    @gen.coroutine
    def update_device(self, device_id, device_info):
        result = yield self.db.device_info.update({'device_id': device_id},
                                                  {'$set': device_info})
        raise gen.Return(result)
