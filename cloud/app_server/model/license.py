#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from lib.query import Query

class LicenseModel(Query):
    def __init__(self, db):
        self.db = db
        self.table_name = 'license'
        super(LicenseModel, self).__init__()
    
    def add_new_license(self, license_info):
        return self.data(license_info).add()
    
    def get_license_by_license_id(self, license_id):
        where = "license_id = '%s'" % license_id
        return self.where(where).find()

    def get_license(self, license_id, passowrd):
        where = "license_id = '%s' AND password = '%s'" % (license_id, passowrd)
        return self.where(where).find()

