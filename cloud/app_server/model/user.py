#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from tornado import gen

class UserModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = 'user'
    
    @gen.coroutine
    def get_user_by_uid(self, uid):
        result = yield self.db.user.find_one({'_id': uid})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_user_by_email(self, email):
        result = yield self.db.user.find_one({'email': email})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_user_by_username(self, username):
        result = yield self.db.user.find_one({'username': username})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_user_by_nickname(self, nickname):
        result = yield self.db.user.find_one({'nickname': nickname})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_user_by_email_and_uid(self, email, uid):
        result = yield self.db.user.find_one({'$and': [{'email': email}, {'_id': uid}]})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_user_by_email_and_password(self, email, secure_password):
        result = yield self.db.user.find_one({'$and': [{'email': email}, {'password': secure_password}]})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_user_by_email_and_username(self, email, username):
        result = yield self.db.user.find_one({'$and': [{'email': email}, {'username': username}]})
        raise gen.Return(result)
    
    @gen.coroutine
    def get_user_by_email_and_nickname(self, email, nickname):
        result = yield self.db.user.find_one({'$and': [{'email': email}, {'nickname': nickname}]})
        raise gen.Return(result)
    
    @gen.coroutine
    def set_user_base_info_by_uid(self, uid, info):
        result = yield self.db.user.update({'_id': uid},
                                           {'$set': info})
        raise gen.Return(result)
    
    @gen.coroutine
    def set_user_avatar_by_uid(self, uid, avatar_name):
        result = yield self.db.user.update({'_id': uid},
                                           {'$set': {'avatar': avatar_name}})
        raise gen.Return(result)
    
    @gen.coroutine
    def set_user_password_by_uid(self, uid, secure_password):
        result = yield self.db.user.update({'_id': uid},
                                           {'$set': {'password': secure_password}})
        raise gen.Return(result)
    
    @gen.coroutine
    def add_new_user(self, info):
        result = yield self.db.user.insert(info)
        raise gen.Return(result)
    


