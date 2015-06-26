#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from tornado import gen

class DeviceLogModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = 'device_log'
    
    @gen.coroutine
    def new_device_log(self, device_id, level, log, timestamp):
        result = yield self.db.device_log.insert({'device_id': device_id, 'level': level,
                                             'log': log, 'timestamp': timestamp, 'checked': False})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_unchecked_log(self, device_id):
        logs = []
        cursor = yield self.db.device_log.find({'$and': [{'device_id': device_id}, {'checked': False}]})
        while (yield cursor.fetch_next):
            log = cursor.next_object()
            logs.append(log)
        raise gen.Return(logs)
    
    @gen.coroutine
    def checked_log(self, log_id):
        result = yield self.db.device_log.update({'_id': log_id},
                                                 {'$set': {'checked': true}})
        raise gen.Return(result)
