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
import tornado.httpserver
import tornado.ioloop
import tornado.options
import tornado.web
from Crypto.PublicKey import RSA

import handler.device_handler
import handler.app_rpc_handler
import model.device_info
import model.device_factory_info
import model.device_log
import model.device_stats
import model.license
import model.mylicense

from tornado.options import define, options

import motor

from cassandra.cluster import Cluster
from lib.tornado_cassandra import TornadoCassandra 

define('port', default = 9999, help = 'run on the given port', type = int)
define('mongodb_node', default = '127.0.0.1', help = 'mongodb node ip')
define('cassandra_node', default = '127.0.0.1', help = 'cassandra node ip')

class Application(tornado.web.Application):
    def __init__(self):
        handlers = [
            (r'/app_rpc', handler.app_rpc_handler.AppRPCHandler),
            (r'/device_monitor', handler.device_handler.WebSocketHandler),
        ]

        tornado.web.Application.__init__(self, handlers)
        
        self.mongodb = motor.MotorClient(options.mongodb_node, 27017).coconut

        self.cluster = Cluster(['127.0.0.1'])
        self.session = self.cluster.connect('coconut')
        self.cassandra_conn = TornadoCassandra(self.session, ioloop=tornado.ioloop.IOLoop.current())
  
        # Have one global model for db query
        self.device_info_model = model.device_info.DeviceInfoModel(self.mongodb)
        self.device_factory_info_model = model.device_factory_info.DeviceFactoryInfoModel(self.mongodb)
        self.device_log_model = model.device_log.DeviceLogModel(self.cassandra_conn)
        self.device_stats_model = model.device_stats.DeviceStatsModel(self.cassandra_conn)
        self.license_model = model.license.LicenseModel(self.mongodb)
        self.mylicense_model = model.mylicense.MylicenseModel(self.mongodb)

        # Have one global memcache controller
        self.mc = memcache.Client(['127.0.0.1:11211'])

        f = open('privkey.der', 'r')
        self.private_key = RSA.importKey(f.read())

        self.server_node = '10.174.148.97' 

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

