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
from tornado import gen

class IndexHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        devices = yield self.application.device_info_model.get_user_all_devices(user_info['_id'])
        
        template_variables['user_info']['devices'] = devices
        template_variables['gen_random'] = gen_random
        
        self.render('index.html', **template_variables)

