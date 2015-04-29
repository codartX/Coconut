#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 14-8-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

import json

def print_JSONP(callback = "callback", data = {}):
    if(not callback): callback = "callback"
    json_data = json.JSONEncoder().encode(data)
    return "%s(%s);" % (callback, json_data)

def print_JSON(data = {}):
    json_data = json.JSONEncoder().encode(data)
    return "%s" % json_data

def dump(data = {}, callback = None):
    if(callback):
        return print_JSONP(callback, data)
    else:
        return print_JSON(data)

