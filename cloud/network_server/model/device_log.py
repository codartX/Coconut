#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import time
from tornado import gen

class DeviceLogModel():
    def __init__(self, conn):
        self.conn = conn
    
    @gen.coroutine
    def add_new_device_log(self, device_id, log, timestamp):
        yield self.conn.execute('INSERT INTO device_log (device_id, log, timestamp) VALUES (' + 
                                device_id + ', ' + 
                                log + ', ' + 
                                timestamp +  
                                ')') 
    
    
    def get_device_log_collection_in_period(self, device_id, from_time, to_time):
        device_logs = yield self.conn.execute('SELECT * from device_log WHERE device_id = ' + device_id + 
                                               ' AND timestamp > ' + str(from_time) + 
                                               ' AND timestamp < ' + str(to_time))
        raise gen.Return(device_logs)
    
