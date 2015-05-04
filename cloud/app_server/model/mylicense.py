#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from tornado import gen

class MylicenseModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = 'mylicense'
    
    @gen.coroutine
    def add_new_my_license(self, mylicense_info):
        result = yield self.db.mylicense.insert(mylicense_info)
        raise gen.Return(result)
    
    @gen.coroutine
    def get_my_license_by_license_id(self, license_id):
        result = yield self.db.mylicense.find_one({'license_id': license_id})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_user_all_my_licenses(self, uid):
        licenses = []
        cursor = self.db.mylicense.find_one({'uid': uid})
        while (yield cursor.fetch_next):
            license = cursor.next_object()
            licenses.append(license)
        raise gen.Return(licenses)
