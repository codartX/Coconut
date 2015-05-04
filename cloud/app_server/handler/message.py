#!/usr/bin/env python
# coding=utf-8
#
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import uuid
import hashlib
import Image
import StringIO
import time
import json
import re
import urllib2
import tornado.web
from tornado import gen
import lib.jsonp
import pprint

from base import *
from lib.variables import *
from lib.variables import gen_random
from lib.xss import XssCleaner
from lib.utils import find_mentions

class ListHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, template_variables = {}):
        user_info = self.current_user
        page = int(self.get_argument('p', '1'))
        template_variables['user_info'] = user_info

        template_variables['messages_count'] = self.message_model.get_user_unread_message_count(user_info['_id']);
        template_variables['messages'] = self.message_model.get_user_all_messages(user_info['_id'], current_page = page)
        template_variables['gen_random'] = gen_random

        # mark user unread messages as read
        self.message_model.mark_user_unread_message_as_read(user_info['uid'])

        self.render('message/messages.html', **template_variables)

