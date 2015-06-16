#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 22-11-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

#retcode define
#0: success
#1: database error
#2: device does not exist
#3: invalid resource
#4: invalid message format
#5: transaction id error
#6: permission deny
#7: schema validate fail
#8: device duplicate

SUCCESS                = 0

DATABASE_ERROR         = 1

DEVICE_NON_EXIST       = 2

INVALID_RESOURCE       = 3

INVALID_MSG_FMT        = 4

INVALID_TRANSACTION_ID = 5

PERMISSION_DENY        = 6

SCHEMA_VALIDATE_FAIL   = 7

DEVICE_DUPLICATE       = 8

DECODE_FAIL            = 9

INVALID_PASSWORD       = 10