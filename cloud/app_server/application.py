#!/usr/bin/env python
# coding=utf-8
#
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import sys
reload(sys)
sys.setdefaultencoding("utf8")

import os.path
import re
import memcache
import torndb
import tornado.httpserver
import tornado.ioloop
import tornado.options
import tornado.web
from tornado import gen

import tornado.platform.twisted
tornado.platform.twisted.install()
from twisted.internet import reactor

import handler.user
import handler.message
import handler.index
import handler.device
import handler.device_policy
import handler.device_stats

from model.user import UserModel
from model.message import MessageModel
from model.license import LicenseModel
from model.mylicense import MylicenseModel
from model.device_info import DeviceInfoModel
from model.device_log import DeviceLogModel
from model.device_policy import DevicePolicyModel
from model.device_stats import DeviceStatsModel
from model.device_key import DeviceKeyModel

from tornado.options import define, options
from lib.loader import Loader
from lib.session import Session, SessionManager
from jinja2 import Environment, FileSystemLoader

import motor

import logging

define("port", default = 80, help = "run on the given port", type = int)
define("mysql_host", default = "127.0.0.1", help = "community database host")
define("mysql_database", default = "LinkIoMe", help = "community database name")
define("mysql_user", default = "root", help = "community database user")
define("mysql_password", default = "198318", help = "community database password")

class Application(tornado.web.Application):
    def __init__(self):
        settings = dict(
            template_path = os.path.join(os.path.dirname(__file__), "templates"),
            static_path = os.path.join(os.path.dirname(__file__), "static"),
            xsrf_cookies = True,
            cookie_secret = "cookie_secret_code",
            login_url = "/login",
            autoescape = None,
            jinja2 = Environment(loader = FileSystemLoader(os.path.join(os.path.dirname(__file__), "templates")), trim_blocks = True),
            reserved = ["user", "home", "setting", "forgot", "login", "logout", "register", "admin"],
        )

        handlers = [
            (r"/", handler.index.IndexHandler),
            (r"/u/(.*)", handler.user.ProfileHandler),
            (r"/setting", handler.user.SettingHandler),
            (r"/setting/avatar", handler.user.SettingAvatarHandler),
            (r"/setting/avatar/gravatar", handler.user.SettingAvatarFromGravatarHandler),
            (r"/setting/password", handler.user.SettingPasswordHandler),
            (r"/forgot", handler.user.ForgotPasswordHandler),
            (r"/login", handler.user.LoginHandler),
            (r"/logout", handler.user.LogoutHandler),
            (r"/register", handler.user.RegisterHandler),
            #(r"/messages", handler.message.MessagesHandler),
            (r"/device/add", handler.device.DeviceAddHandler),
            (r"/device/list", handler.device.DeviceListHandler),
            (r"/device/([0-9]+)", handler.device.DeviceViewHandler),
            #(r"/device/remove/([0-9]+)", handler.device.DeviceRemoveHandler),
            (r"/device_stats/([0-9]+)/(.*)/(.*)", handler.device_stats.DeviceStatsViewHandler),
            (r"/device_policy/add", handler.device_policy.DevicePolicyAddHandler),
            (r"/device_policy/list", handler.device_policy.DevicePolicyListHandler),
            (r"/device_policy/([0-9]+)", handler.device_policy.DevicePolicyViewHandler),
            (r"/device_policy/remove/([0-9]+)", handler.device_policy.DevicePolicyRemoveHandler),

            (r"/(favicon\.ico)", tornado.web.StaticFileHandler, dict(path = settings["static_path"])),
            (r"/(sitemap.*$)", tornado.web.StaticFileHandler, dict(path = settings["static_path"])),
            (r"/(bdsitemap\.txt)", tornado.web.StaticFileHandler, dict(path = settings["static_path"])),
        ]

        tornado.web.Application.__init__(self, handlers, **settings)

        self.mongodb = motor.MotorClient('localhost', 27017).linkiome

        # Have one global model for db query
        self.user_model = UserModel(self.mongodb)
        self.message_model = MessageModel(self.mongodb)
        self.license_model = LicenseModel(self.mongodb)
        self.mylicense_model = MylicenseModel(self.mongodb)
        self.device_key_model = DeviceKeyModel(self.mongodb)
        self.device_info_model = DeviceInfoModel(self.mongodb)
        self.device_log_model = DeviceLogModel(self.mongodb)
        self.device_policy_model = DevicePolicyModel(self.mongodb)
        self.device_stats_model = DeviceStatsModel(self.mongodb)

        # Have one global session controller
        self.session_manager = SessionManager(settings["cookie_secret"], ["127.0.0.1:11211"], 0)

        # Have one global memcache controller
        self.mc = memcache.Client(["127.0.0.1:11211"])

def main():
    logging.basicConfig(level=logging.DEBUG,
                        format='%(levelname)-8s %(message)s')
    tornado.options.parse_command_line()
    http_server = tornado.httpserver.HTTPServer(Application())
    http_server.listen(options.port)
    tornado.ioloop.IOLoop.instance().start()

if __name__ == "__main__":
    main()

