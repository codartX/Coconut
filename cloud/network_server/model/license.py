#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from tornado import gen

class LicenseModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = 'license'
    
    @gen.coroutine
    def add_new_license(self, license_info):
        result = yield self.db.license.insert(license_info)
        raise gen.Return(result)
    
    @gen.coroutine
    def get_license(self, license_id):
        result = yield self.db.license.find_one({'license_id': license_id})
        raise gen.Return(result)
    
    @gen.coroutine
    def license_valid(self, license_id, passowrd):
        result = yield self.db.license.find({'$and': [{'license_id': license_id}, {'password': passowrd}]}).count()
        raise gen.Return(result)
    
    @gen.coroutine
    def license_exist(self, license_id):
        result = yield self.db.license.count({'license_id': license_id})
        raise gen.Return(result)

    @gen.coroutine
    def get_user_all_licenses(self, owner_id):
        licenses = []
        cursor = self.db.license.find({'owner_id': owner_id})
        while (yield cursor.fetch_next):
            license = cursor.next_object()
            licenses.append(license)
        raise gen.Return(licenses)

