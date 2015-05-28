#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 8-12-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

IPSO_OBJECTS = {
    3100: {
           'Object Name': 'Device Information',
           'Object URN': 'urn:oma:lwm2m:ext:3100',
           'Multiple Instances': False,
           'Description': 'Device detail information',
           'Resources': {
                         5100: {'Mandatory': True,  'Multiple Instances': False},
                         5101, {'Mandatory': True,  'Multiple Instances': False},
                         5101, {'Mandatory': True,  'Multiple Instances': False},
                         5102, {'Mandatory': True,  'Multiple Instances': False},
                         5103, {'Mandatory': True,  'Multiple Instances': False},
                         5104, {'Mandatory': True,  'Multiple Instances': False},
                         5105, {'Mandatory': True,  'Multiple Instances': False},
                         5106, {'Mandatory': True,  'Multiple Instances': False},
                         5107, {'Mandatory': True,  'Multiple Instances': False},
                         5108, {'Mandatory': True,  'Multiple Instances': False},
                         5109, {'Mandatory': True,  'Multiple Instances': False},
                        }
          },
    3303: {
           'Object Name': 'IPSO Temperature',
           'Object URN': 'urn:oma:lwm2m:ext:3303',
           'Multiple Instances': True,
           'Description': 'Temperature sensor, example units = Cel',
           'Resources': {
                         5700: {'Mandatory': True,  'Multiple Instances': False},
                         5701, {'Mandatory': False, 'Multiple Instances': False},
                         5601, {'Mandatory': False, 'Multiple Instances': False},
                         5602, {'Mandatory': False, 'Multiple Instances': False},
                         5603, {'Mandatory': False, 'Multiple Instances': False},
                         5604, {'Mandatory': False, 'Multiple Instances': False},
                         5605, {'Mandatory': False, 'Multiple Instances': False},
                        }
          },
}
