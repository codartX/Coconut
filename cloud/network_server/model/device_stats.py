#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import time
import pymongo
from tornado import gen

class DeviceStatsModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = 'device_stats'
    
    @gen.coroutine
    def add_new_device_stats(self, device_id, components):
        result = yield self.db.device_stats.insert({'device_id': device_id,
                                                    'components': components, 'timestamp': time.time()})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_latest_device_stats(self, device_id):
        device_info = yield self.db.device_info_history.find_one({'device_id': device_id}).sort({'timestamp':pymongo.DESCENDING});
        raise gen.Return(device_info)
    
    def get_device_stats_collection_in_period(self, device_id, field, from_time, to_time):
        return self.db.device_info_history.find(
                                               {'$and': [
                                                   {'device_id': device_id},
                                                   {'components.' + str(field): { '$exists': True }},
                                                   {'timestamp': {'$gte': from_time, '$lte': to_time}}
                                                   ]
                                               }
                                               ).sort([('timestamp', pymongo.DESCENDING)])
    
    def get_latest_device_stats_collection(self, device_id, field, count):
        return self.db.device_info_history.find({'$and': [{'device_id': device_id},
                                                {'components.' + str(field):
                                                { '$exists': True }}]}).sort([('timestamp', pymongo.DESCENDING)]).limit(count)

