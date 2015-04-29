#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from tornado import gen

class MessageAsyncModel():
    def __init__(self, db):
        self.db = db
        self.collection_name = "message"
    
    @gen.coroutine
    def add_new_message(self, message_info):
        result = yield self.db.message.insert(info)
        raise gen.Return(result)
    
    @gen.coroutine
    def get_user_unread_messages_count(self, uid):
        result = yield self.db.message.find({'$and': [{'to_uid': uid}, {'status': 0}]}).count()
        raise gen.Return(result)
    
    #TODO:it is not good to use skip
    @gen.coroutine
    def get_user_all_unread_messages(self, uid, num = 16, current_page = 1):
        cursor = self.db.message.find({'$and': [{'to_uid': uid}, {'status', 0}]}).sort({'_id': -1}).skip(num * current_page).limit(num)
        while (yield cursor.fetch_next):
            message = cursor.next_object()
            messages.append(message)
        raise gen.Return(messages)
    
    @gen.coroutine
    def get_user_all_messages(self, uid, num = 16, current_page = 1):
        messages = []
        cursor = self.db.message.find({'to_uid': uid}).sort({'_id': -1}).skip(num * current_page).limit(num)
        while (yield cursor.fetch_next):
            message = cursor.next_object()
            messages.append(message)
        raise gen.Return(messages)
    
    @gen.coroutine
    def mark_user_unread_message_as_read(self, uid):
        result = yield self.db.user.update({'$and': [{'to_uid': uid}, {'status': 0}]},
                                           {'$set': {'status': 1}})
        raise gen.Return(result)

