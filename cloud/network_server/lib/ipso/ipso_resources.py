#!/usr/bin/env python
# coding=utf-8
#
#  Created by Jun Fang on 8-12-24.
#  Copyright (c) 2014年 Jun Fang. All rights reserved.

IPSO_RESOURCES = {
    5100: {
           'Resource Name': 'Manufacturer',
           'Access Type': 'ReadOnly',
           'Type':'String',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Manufacturer of the device'
          },
    5101: {
           'Resource Name': 'Model',
           'Access Type': 'ReadOnly',
           'Type':'String',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Model of the device'
          },
    5102: {
           'Resource Name': 'Hardware Version',
           'Access Type': 'ReadOnly',
           'Type':'String',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Hardware version of the device'
          },
    5103: {
           'Resource Name': 'Software Version',
           'Access Type': 'ReadOnly',
           'Type':'String',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Software version of the device'
          },
    5104: {
           'Resource Name': 'Serial',
           'Access Type': 'ReadOnly',
           'Type':'String',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Serial of the device'
          },
    5105: {
           'Resource Name': 'Name',
           'Access Type': 'ReadWrite',
           'Type':'String',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Device name'
          },
    5106: {
           'Resource Name': 'Power Supply',
           'Access Type': 'ReadOnly',
           'Type':'Enum',
           'Range or Enumeration': ['Line', 'Battery', 'Harvester'],
           'Units': None,
           'Description': 'Power supply of the device'
          },
    5107: {
           'Resource Name': 'Power Supply Voltage',
           'Access Type': 'ReadOnly',
           'Type':'Float',
           'Range or Enumeration': None,
           'Units': 'V',
           'Description': 'Power supply voltage of the device'
          },
    5108: {
           'Resource Name': 'Time',
           'Access Type': 'ReadOnly',
           'Type':'Integer',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Device time'
          },
    5109: {
           'Resource Name': 'Uptime',
           'Access Type': 'ReadOnly',
           'Type':'Integer',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Device up time'
          },
    5500: {
           'Resource Name': 'Digital Input State',
           'Access Type': 'ReadOnly',
           'Type':'Boolean',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'The current state of a digital input.'
          },
    5501: {
           'Resource Name': 'Digital Input Counter',
           'Access Type': 'ReadOnly',
           'Type': 'Integer',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'The cumulative value of active state detected.'
          },
    5502: {
           'Resource Name': 'Digital Input Polarity',
           'Access Type': 'ReadWrite',
           'Type': 'Boolean',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'The polarity of a digital input as a Boolean (0 = Normal, 1= Reversed)'
          },
    5503: {
           'Resource Name': 'Digital Input Debounce Period',
           'Access Type': 'ReadWrite',
           'Type': 'Integer',
           'Range or Enumeration': None,
           'Units': 'ms',
           'Description': 'The debounce period in ms.'
          },
    5504: {
           'Resource Name': 'Digital Input Edge Selection',
           'Access Type': 'ReadWrite',
           'Type': 'Integer',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'The edge selection as an integer (1 = Falling edge, 2 = Rising edge, 3 = Both Rising and Falling edge)'
          },
    5505: {
           'Resource Name': 'Digital Input Counter Reset',
           'Access Type': 'E',
           'Type': 'Opaque',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Reset the Counter value'
          },
    5601: {
           'Resource Name': 'Min Measured Value',
           'Access Type': 'ReadOnly',
           'Type': 'Float',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'The minimum value measured by the sensor since power ON or reset'
          },
    5602: {
           'Resource Name': 'Max Measured Value',
           'Access Type': 'ReadOnly',
           'Type': 'Float',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'The maximum value measured by the sensor since power ON or reset'
          },
    5603: {
           'Resource Name': 'Min Range Value',
           'Access Type': 'ReadOnly',
           'Type': 'Float',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'The minimum value that can be measured by the sensor'
          },
    5604: {
           'Resource Name': 'Max Range Value',
           'Access Type': 'ReadOnly',
           'Type': 'Float',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'The maximum value that can be measured by the sensor'
          },
    5605: {
           'Resource Name': 'Reset Min and Max Measured Values',
           'Access Type': 'E',
           'Type': 'Opaque',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Reset the Min and Max Measured Values to Current Value'
          },
    5700: {
           'Resource Name': 'Sensor Value',
           'Access Type': 'ReadOnly',
           'Type': 'Float',
           'Range or Enumeration': None,
           'Units': 'Cel',
           'Description': 'Last or Current Measured Value from the Sensor'
          },
    5701: {
           'Resource Name': 'Units',
           'Access Type': 'ReadOnly',
           'Type': 'String',
           'Range or Enumeration': None,
           'Units': None,
           'Description': 'Measurement Units Definition e.g. “Cel” for Temperature in Celsius.'
          },
    

}


