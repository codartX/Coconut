#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import logging
import sys
reload(sys)
sys.setdefaultencoding('utf8')

import os.path
import re
import memcache
import torndb
import tornado.httpserver
import tornado.ioloop
import tornado.options
import tornado.web

import handler.device_handler
import handler.app_rpc_handler
import model.device_info
import model.device_log
import model.device_stats
import model.device_key
import model.license

from tornado.options import define, options

import motor

define('port', default = 9999, help = 'run on the given port', type = int)
define('server_node', default = '127.0.0.1:9999', help = 'server node')

class Application(tornado.web.Application):
    def __init__(self):
        handlers = [
            (r'/app_rpc', handler.app_rpc_handler.AppRPCHandler),
            (r'/device_monitor', handler.device_handler.WebSocketHandler),
        ]

        tornado.web.Application.__init__(self, handlers)
        
        self.server_node = options.server_node

        self.mongodb = motor.MotorClient('localhost', 27017).linkiome

        # Have one global model for db query
        self.device_key_model = model.device_key.DeviceKeyModel(self.mongodb)
        self.device_info_model = model.device_info.DeviceInfoModel(self.mongodb)
        self.device_log_model = model.device_log.DeviceLogModel(self.mongodb)
        self.device_stats_model = model.device_stats.DeviceStatsModel(self.mongodb)
        self.device_key_model = model.device_key.DeviceKeyModel(self.mongodb)
        self.license_model = model.license.LicenseModel(self.mongodb)

        # Have one global memcache controller
        self.mc = memcache.Client(['127.0.0.1:11211'])

def main():
    logging.basicConfig(level=logging.DEBUG,
                        format='%(levelname)-8s %(message)s')
    
    tornado.options.parse_command_line()
    #http_server = tornado.httpserver.HTTPServer(Application(), ssl_options = {
    #                                            'certfile': 'path-to-crt-file',
    #                                            'keyfile': 'path-to-key-file',
    #                                            })
    http_server = tornado.httpserver.HTTPServer(Application())
    http_server.listen(options.port)
    
    tornado.ioloop.IOLoop.instance().start()

if __name__ == '__main__':
    main()

