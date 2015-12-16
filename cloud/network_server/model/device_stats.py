#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import time
from tornado import gen

class DeviceStatsModel():
    def __init__(self, conn):
        self.conn = conn
    
    @gen.coroutine
    def add_new_device_stats(self, device_id, components, timestamp):
        for object_name in components: 
            yield self.conn.execute('INSERT INTO dev_stats (dev_id, obj_name, value, time) VALUES (\'%s\', \'%s\', \'%s\', %s)' % (device_id, object_name, str(components[object_name]), str(timestamp))) 
        raise gen.Return(True)
    
    
    def get_device_stats_collection_in_period(self, device_id, object_name, from_time, to_time):
        device_stats = yield self.conn.execute('SELECT * from dev_stats WHERE dev_id = \'%s AND obj_name = \'%s\' AND time > %s AND time < %s' % (device_id, object_name, str(from_time), str(to_time))) 
        raise gen.Return(device_stats)
    
