#!/usr/bin/env python
# coding=utf-8
#
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

from wtforms import TextField, validators
from lib.forms import Form
from lib.loader import Loader
from tornado.options import define, options

class RegisterForm(Form):
    username = TextField('username', [
        validators.Required(message = 'Username is requied'),
        validators.Length(min = 4, message = 'Length of username is too short (4-12 characters)'),
        validators.Length(max = 12, message = 'Length of username is too long (4-12 characters)'),
        validators.Regexp('^[a-zA-Z][a-zA-Z0-9_]*$', message = 'Username must begin with character, composed with characters, numbers or _'),
    ])

    email = TextField('email', [
        validators.Required(message = 'Email is required'),
        validators.Length(min = 4, message = 'Email address length error'),
        validators.Email(message = 'Invalid email address'),
    ])

    password = TextField('password', [
        validators.Required(message = 'Password is required'),
        validators.Length(min = 6, message = 'Length of password is too short (6-64 characters)'),
        validators.Length(max = 64, message = 'Length of password is too long (6-64 characters)'),
        validators.EqualTo('password_confirm', message='Re-type password is not same as password'),
    ])

    password_confirm = TextField('password_confirm')

class LoginForm(Form):
    email = TextField('email', [
        validators.Required(message = 'Email is required'),
        validators.Length(min = 4, message = 'Email address length error'),
        validators.Email(message = 'Invalid email address'),
    ])

    password = TextField('password', [
        validators.Required(message = 'Password is required'),
        validators.Length(min = 6, message = 'Length of password is too short (6-64 characters)'),
        validators.Length(max = 64, message = 'Length of password is too long (6-64 characters)'),
    ])

class ForgotPasswordForm(Form):
    email_reset_pwd = TextField('email', [
        validators.Required(message = 'Email is required'),
        validators.Length(min = 4, message = 'Email address length error'),
        validators.Email(message = 'Invalid email address'),
    ])

class SettingPasswordForm(Form):
    password_old = TextField('password_old', [
        validators.Required(message = 'Current password is required'),
        validators.Length(min = 6, message = 'Length of password is too short (6-64 characters)'),
        validators.Length(max = 64, message = 'Length of password is too long (6-64 characters)'),
    ])

    password = TextField('password', [
        validators.Required(message = 'New password is required'),
        validators.Length(min = 6, message = 'Length of password is too short (6-64 characters)'),
        validators.Length(max = 64, message = 'Length of password is too long (6-64 characters)'),
        validators.EqualTo('password_confirm', message='Re-type password is not same as password'),
    ])

    password_confirm = TextField('password_confirm')

class SettingForm(Form):
    username = TextField('username') # readonly
    email = TextField('email') # readonly
    location = TextField('location', [
        validators.Optional(),
    ])
    self_intro = TextField('self_intro', [
        validators.Optional(),
    ])

