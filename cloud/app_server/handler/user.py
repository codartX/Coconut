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

from base import *
from lib.sendmail import send
from lib.variables import gen_random
from lib.gravatar import Gravatar
from form.user import *

from lib.pygeocoder.pygeocoder import *
from lib.geohash import *

@gen.coroutine
def do_login(self, user_id):
    user_info = yield self.application.user_model.get_user_by_uid(user_id)
    user_info['_id'] = str(user_info['_id'])
    self.session['uid'] = user_info['_id']
    self.session['username'] = user_info['username']
    self.session['email'] = user_info['email']
    self.session['password'] = user_info['password']
    self.session.save()
    user_info['messages_count'] = yield self.application.message_model.get_user_unread_messages_count(user_id)
    user_info['devices'] = yield self.application.device_info_model.get_user_all_devices(user_id)
    self.update_current_user(user_info)

def do_logout(self):
    # destroy sessions
    self.session['uid'] = None
    self.session['username'] = None
    self.session['email'] = None
    self.session['password'] = None
    self.session.save()

    # destroy cookies
    self.clear_cookie('user')

class SettingsHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self, template_variables = {}):
        user_info = self.current_user

        template_variables['user_info'] = user_info
        template_variables['gen_random'] = gen_random

        self.render('user/settings.html', **template_variables)

    @tornado.web.authenticated
    @gen.coroutine
    def post(self, template_variables = {}):
        template_variables['errors'] = {}

        # validate the fields
        form = SettingForm(self)

        if not form.validate():
            self.get({'errors': form.errors})
            return

        # validate duplicated
        if form.email.data != self.current_user['email']:
            duplicated_email = yield self.application.user_model.get_user_by_email(form.email.data)
            if(duplicated_email):
                template_variables['errors']['duplicated_email'] = ['Email address has been registered']
                self.get(template_variables)
                return


        # continue while validate succeed
        user_info = self.current_user
        update_result = yield self.application.user_model.set_user_base_info_by_uid(user_info['_id'], {
            'email': form.email.data,
            'updated': time.strftime('%Y-%m-%d %H:%M:%S'),
        })

        template_variables['message'] = {}
        template_variables['message']['success_message'] = ['User information update successfully']

        self.get(template_variables)

class SettingAvatarHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        template_variables['gen_random'] = gen_random
        self.render('user/setting_avatar.html', **template_variables)

    @tornado.web.authenticated
    @gen.coroutine
    def post(self, template_variables = {}):
        template_variables = {}

        if(not 'avatar' in self.request.files):
            template_variables['errors'] = {}
            template_variables['errors']['invalid_avatar'] = ['Please choose a avatar file to upload']
            self.get(template_variables)
            return

        user_info = self.current_user
        user_id = user_info['_id']
        avatar_name = '%s' % uuid.uuid5(uuid.NAMESPACE_DNS, str(user_id))
        avatar_raw = self.request.files['avatar'][0]['body']
        avatar_buffer = StringIO.StringIO(avatar_raw)
        avatar = Image.open(avatar_buffer)

        # crop avatar if it's not square
        avatar_w, avatar_h = avatar.size
        avatar_border = avatar_w if avatar_w < avatar_h else avatar_h
        avatar_crop_region = (0, 0, avatar_border, avatar_border)
        avatar = avatar.crop(avatar_crop_region)

        avatar_96x96 = avatar.resize((96, 96), Image.ANTIALIAS)
        avatar_48x48 = avatar.resize((48, 48), Image.ANTIALIAS)
        avatar_32x32 = avatar.resize((32, 32), Image.ANTIALIAS)
        avatar_96x96.save('./static/avatar/b_%s.png' % avatar_name, 'PNG')
        avatar_48x48.save('./static/avatar/m_%s.png' % avatar_name, 'PNG')
        avatar_32x32.save('./static/avatar/s_%s.png' % avatar_name, 'PNG')
        updated = yield self.application.user_model.set_user_base_info_by_uid(user_id, {'avatar': '%s.png' % avatar_name,
                                                                        'updated': time.strftime('%Y-%m-%d %H:%M:%S')})

        template_variables['success_message'] = ['Avatar update successfully']
        
        self.get(template_variables)

class SettingAvatarFromGravatarHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, template_variables = {}):
        user_info = self.current_user
        user_id = user_info['_id']
        avatar_name = '%s' % uuid.uuid5(uuid.NAMESPACE_DNS, str(user_id))
        gravatar = Gravatar(user_info['email'])
        avatar_96x96 = gravatar.get_image(size = 96, filetype_extension = False)
        avatar_48x48 = gravatar.get_image(size = 48, filetype_extension = False)
        avatar_32x32 = gravatar.get_image(size = 32, filetype_extension = False)
        urllib.urlretrieve(avatar_96x96, './static/avatar/b_%s.png' % avatar_name)
        urllib.urlretrieve(avatar_48x48, './static/avatar/m_%s.png' % avatar_name)
        urllib.urlretrieve(avatar_32x32, './static/avatar/s_%s.png' % avatar_name)
        updated = yield self.application.user_model.set_user_base_info_by_uid(user_id, {'avatar': '%s.png' % avatar_name,
                                                                        'updated': time.strftime('%Y-%m-%d %H:%M:%S')})

        template_variables['success_message'] = ['Avatar update successfully']
        template_variables['user_info'] = user_info
        template_variables['gen_random'] = gen_random
        
        self.render('user/setting_avatar.html', **template_variables)

class SettingPasswordHandler(BaseHandler):
    @tornado.web.authenticated
    def get(self, template_variables = {}):
        user_info = self.current_user
        template_variables['user_info'] = user_info
        template_variables['gen_random'] = gen_random
        self.render('user/setting_password.html', **template_variables)

    @tornado.web.authenticated
    @gen.coroutine
    def post(self, template_variables = {}):
        template_variables['errors'] = {} 
        template_variables['messages'] = {} 

        # validate the fields
        form = SettingPasswordForm(self)

        if not form.validate():
            self.get({'errors': form.errors})
            return

        # validate the password

        user_info = self.current_user
        user_id = user_info['_id']
        secure_password = hashlib.sha1(form.password_old.data).hexdigest()
        secure_new_password = hashlib.sha1(form.password.data).hexdigest()

        if(not user_info['password'] == secure_password):
            template_variables['errors']['error_password'] = ['Current password is not correct']
            self.get(template_variables)
            return

        # continue while validate succeed
        updated = yield self.application.user_model.set_user_base_info_by_uid(user_id, {'password': secure_new_password,
                                                                        'updated': time.strftime('%Y-%m-%d %H:%M:%S')})

        template_variables['messages']['success_message'] = ['Password updated successfully']

        self.get(template_variables)

class ForgotPasswordHandler(BaseHandler):
    def get(self, template_variables = {}):
        do_logout(self)
        self.redirect('/login', **template_variables)

    @gen.coroutine
    def post(self, template_variables = {}):
        # validate the fields
        form = ForgotPasswordForm(self)

        if not form.validate():
            self.write(lib.jsonp.print_JSON({
                'success': 0,
                'message': form.errors,
            }))

        # validate the post value
        user_info = yield self.application.user_model.get_user_by_email(form.email_reset_pwd.data)

        if(not user_info):
            self.write(lib.jsonp.print_JSON({
                'success': 0,
                'message': ['Email address is not correct'],
            }))

        # continue while validate succeed
        # update password

        new_password = uuid.uuid1().hex
        new_secure_password = hashlib.sha1(new_password).hexdigest()
        update_result = yield self.application.user_model.set_user_password_by_uid(user_info['_id'], new_secure_password)

        # send password reset link to user
        mail_title = 'Find password'
        template_variables = {'email': form.email_reset_pwd.data, 'new_password': new_password};
        #template_variables['success_message'] = ['New password has been sent to your email']
        #mail_content = self.render_string('user/forgot_password_mail.html', **template_variables)
        mail_content = 'New password' + new_password
        send(mail_title, mail_content, form.email_reset_pwd.data)

        self.write(lib.jsonp.print_JSON({
            'success': 1,
            'message': ['New password has been sent to your email'],
        }))

class LoginHandler(BaseHandler):
    def get(self, template_variables = {}):
        do_logout(self)
        self.render('user/login.html', **template_variables)

    @gen.coroutine
    def post(self, template_variables = {}):
        template_variables = {}

        # validate the fields

        form = LoginForm(self)

        if not form.validate():
            self.get({'errors': form.errors})
            return

        # continue while validate succeed
        secure_password = hashlib.sha1(form.password.data).hexdigest()
        user_info = yield self.application.user_model.get_user_by_email_and_password(form.email.data, secure_password)
        
        if(user_info):
            yield do_login(self, user_info['_id'])
            # update `last_login`
            updated = yield self.application.user_model.set_user_base_info_by_uid(user_info['_id'],
                                                                                        {'last_login': time.strftime('%Y-%m-%d %H:%M:%S')})
            self.redirect(self.get_argument('next', '/'))
            return

        template_variables['errors'] = {'invalid_email_or_password': ['Email or password is not correct']}
        self.get(template_variables)

class LogoutHandler(BaseHandler):
    def get(self):
        do_logout(self)
        # redirect
        self.redirect(self.get_argument('next', '/'))

class RegisterHandler(BaseHandler):
    def get(self, template_variables = {}):
        do_logout(self)
        self.render('user/register.html', **template_variables)

    @gen.coroutine
    def post(self, template_variables = {}):
        # validate the fields

        form = RegisterForm(self)

        if not form.validate():
            self.get({'errors': form.errors})
            return

        # validate duplicated
        duplicated_email = yield self.application.user_model.get_user_by_email(form.email.data)
        duplicated_username = yield self.application.user_model.get_user_by_username(form.username.data)

        if(duplicated_email or duplicated_username):
            template_variables['errors'] = {}

            if(duplicated_email):
                template_variables['errors']['duplicated_email'] = ['Email address has been registered']

            if(duplicated_username):
                template_variables['errors']['duplicated_username'] = ['Username has been registered']

            self.get(template_variables)
            return

        # validate reserved
        if(form.username.data in self.settings.get('reserved')):
            template_variables['errors'] = {}
            template_variables['errors']['reserved_username'] = ['This username is reserved']
            self.get(template_variables)
            return

        # continue while validate succeed
        secure_password = hashlib.sha1(form.password.data).hexdigest()

        user_info = {
            'email': form.email.data,
            'password': secure_password,
            'username': form.username.data,
            'created': time.strftime('%Y-%m-%d %H:%M:%S')
        }
        
        user_id = yield self.application.user_model.add_new_user(user_info)
        
        if(user_id):
            yield do_login(self, user_id)

            # send register success mail to user

            mail_title = 'Register successfully'
            mail_content = self.render_string('user/register_mail.html')
            send(mail_title, mail_content, form.email.data)

        self.redirect(self.get_argument('next', '/'))

class ProfileHandler(BaseHandler):
    @tornado.web.authenticated
    @gen.coroutine
    def get(self, user, template_variables = {}):
        if(re.match(r'^\d+$', user)):
            user_info = yield self.application.user_model.get_user_by_uid(user)
        else:
            user_info = yield self.application.user_model.get_user_by_username(user)

        if not user_info:
            self.write_error(404)
            return

        template_variables['user_info'] = user_info

        current_user = self.current_user
        template_variables['gen_random'] = gen_random

        self.render('user/profile.html', **template_variables)

