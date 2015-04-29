#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from lib.query import Query

class MessageModel(Query):
    def __init__(self, db):
        self.db = db
        self.table_name = "message"
        super(MessageModel, self).__init__()

    def add_new_message(self, message_info):
        return self.data(message_info).add()

    def get_user_unread_messages_count(self, uid):
        where = "to_uid = %s AND status = 0" % uid
        return self.where(where).count()

    def get_user_all_unread_messages(self, uid, num = 16, current_page = 1):
        where = "to_uid = %s AND status = 0" % uid
        join = "LEFT JOIN user AS from_user ON message.from_uid = from_user.uid"
        order = "id DESC"
        field = "message.*, \
                from_user.username as from_username, \
                from_user.avatar as from_avatar, \
                from_user.uid as from_uid" 
        return self.where(where).join(join).field(field).order(order).pages(current_page = current_page, list_rows = num)

    def get_user_all_messages(self, uid, num = 16, current_page = 1):
        where = "to_uid = %s" % uid
        join = "LEFT JOIN user AS from_user ON message.from = from_user.uid"
        order = "id DESC"
        field = "message.*, \
                from_user.username as from_username, \
                from_user.avatar as from_avatar, \
                from_user.uid as from_uid"
        return self.where(where).join(join).field(field).order(order).pages(current_page = current_page, list_rows = num)

    def mark_user_unread_message_as_read(self, uid):
        where = "status = 0 AND to_uid = %s" % uid
        return self.where(where).data({"status": 1}).save()

