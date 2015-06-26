#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
from tornado import gen

class DevicePolicyModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = 'device_policy'
    
    @gen.coroutine
    def new_policy(self, policy):
        result = yield self.db.device_policy.insert(policy)
        raise gen.Return(result)
    
    @gen.coroutine
    def policy_exist(self, device_id, policy_id):
        result = yield self.db.device_policy.find_one({'$and': [{'device_id': device_id}, {'_id': policy_id}]}).limit(1).size()
        raise gen.Return(result)
    
    @gen.coroutine
    def get_policy_by_id(self, id):
        policy = yield self.db.device_policy.find_one({'_id': id})
        raise gen.Return(policy)
    
    @gen.coroutine
    def get_policy(self, device_id, policy_id):
        policy = yield self.db.device_policy.find_one({'$and': [{'device_id': device_id}, {'_id': policy_id}]})
        raise gen.Return(policy)
    
    @gen.coroutine
    def get_device_all_policy(self, device_id):
        policys = []
        cursor = self.db.device_policy.find({'device_id': device_id})
        while (yield cursor.fetch_next):
            policy = cursor.next_object()
            policys.append(policy)
        raise gen.Return(policys)
    
    @gen.coroutine
    def update_policy(self, policy_id, policy):
        result = yield self.db.device_policy.update({'_id': policy_id},
                                                    {'$set': policy})
        raise gen.Return(result)

    @gen.coroutine
    def remove_policy(self, policy_id):
        policy = yield self.db.device_policy.remove({'_id': policy_id})
        raise gen.Return(result)
    
