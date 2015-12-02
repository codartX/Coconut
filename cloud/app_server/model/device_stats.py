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
            if 'value' in components[object_name]:
                yield self.conn.execute('INSERT INTO device_stats (device_id, object_name, value, timestamp) VALUES (' + 
                                        device_id + ', ' + 
                                        object_name + ', ' + 
                                        str(components[object_name]['value']) + ', ' + 
                                        timestamp +  
                                        ')') 
    
    
    def get_device_stats_collection_in_period(self, device_id, object_name, from_time, to_time):
        device_stats = yield self.conn.execute('SELECT * from device_stats WHERE device_id = ' + device_id + 
                                               ' AND object_name = ' + object_name +
                                               ' AND timestamp > ' + str(from_time) + 
                                               ' AND timestamp < ' + str(to_time))
        raise gen.Return(device_stats)
    
