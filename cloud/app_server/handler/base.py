#!/usr/bin/env python
# coding=utf-8
#
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import tornado.web
import lib.session
import time
import helper
from tornado import gen

class BaseHandler(tornado.web.RequestHandler):
    def __init__(self, *argc, **argkw):
        super(BaseHandler, self).__init__(*argc, **argkw)
        self.session = lib.session.Session(self.application.session_manager, self)
        self.jinja2 = self.settings.get('jinja2')
        self.jinja2 = helper.Filters(self.jinja2).register()

    @property
    def db(self):
        return self.application.db

    @property
    def user_model(self):
        return self.application.user_model

    @property
    def message_model(self):
        return self.application.message_model
    
    @property
    def license_model(self):
        return self.application.license_model
    
    @property
    def my_license_model(self):
        return self.application.my_license_model
    
    @property
    def device_info_model(self):
        return self.application.device_info_model
    
    @property
    def device_info_history_model(self):
        return self.application.device_info_hsitory_model
    
    @property
    def loader(self):
        return self.application.loader

    @property
    def mc(self):
        return self.application.mc

    #@gen.coroutine
    #def get_current_user(self):
    #    user_id = self.get_secure_cookie('user')
    #    if not user_id: return None
    #    user_info = yield self.application.user_async_model.get_user_by_uid(user_id)
    #    if not user_info: return None
    #
    #    user_info['messages_count'] = yield self.application.message_async_model.get_user_unread_messages_count(user_id)
    #    user_info['messages'] = yield self.application.message_async_model.get_user_all_unread_messages(user_id, current_page = 1)
    #
    #    return user_info
    
    def get_current_user(self):
        user_json = self.get_secure_cookie('linkiome_user')
        if not user_json:
            return None
        return tornado.escape.json_decode(user_json)

    def render(self, template_name, **template_vars):
        html = self.render_string(template_name, **template_vars)
        self.write(html)

    def render_string(self, template_name, **template_vars):
        template_vars['xsrf_form_html'] = self.xsrf_form_html
        template_vars['current_user'] = self.current_user
        template_vars['request'] = self.request
        template_vars['request_handler'] = self
        template = self.jinja2.get_template(template_name)
        return template.render(**template_vars)

    def render_from_string(self, template_string, **template_vars):
        template = self.jinja2.from_string(template_string)
        return template.render(**template_vars)
