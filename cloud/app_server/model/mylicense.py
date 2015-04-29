#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from lib.query import Query

class MylicenseModel(Query):
    def __init__(self, db):
        self.db = db
        self.table_name = 'mylicense'
        super(MylicenseModel, self).__init__()
    
    def add_new_my_license(self, license_info):
        return self.data(license_info).add()
    
    def get_my_license_by_license_id(self, license_id):
        where = "license_id = '%s'" % license_id
        return self.where(where).find()
    
    def get_user_all_my_licenses(self, uid):
        where = 'uid = %s' % uid
        return self.where(where).select()
