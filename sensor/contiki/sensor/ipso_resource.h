/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _IPSO_RESOURCE_H
#define _IPSO_RESOURCE_H

resource_type_t resource_types[] = {
{"Manufacturer",                         5100, ReadOnly,  String,  "Manufacturer of the device"},
{"Model",                                5101, ReadOnly,  String,  "Model of the device"},
{"Hardware Version",                     5102, ReadOnly,  String,  "Hardware version of the device"},
{"Software Version",                     5103, ReadOnly,  String,  "Software version of the device"},
{"Serial",                               5104, ReadOnly,  String,  "Serial of the device"},
{"Name",                                 5105, ReadWrite, String,  "Name of the device"},
{"Power Supply",                         5106, ReadOnly,  String,  "Power supply of the device"},
{"Time",                                 5107, ReadOnly,  Integer, "Device time"},
{"Uptime",                               5108, ReadOnly,  Integer, "Device up time"},
{"Digital Input State",                  5500, ReadOnly,  Boolean, "The current state of a digital input."},
{"Min Measured Value",                   5601, ReadOnly,  Float,   "The minimum value measured by the sensor since power ON or reset"},
{"Max Measured Value",                   5602, ReadOnly,  Float,   "The maximum value measured by the sensor since power ON or reset"},
{"Min Range Value",                      5603, ReadOnly,  Float,   "The minimum value that can be measured by the sensor"},
{"Max Range Value",                      5604, ReadOnly,  Float,   "The maximum value that can be measured by the sensor"},
{"Sensor Value",                         5700, ReadOnly,  Float,   "Last or Current Measured Value from the Sensor"},
{"Units",                                5701, ReadOnly,  String , "Measurement Units Definition e.g. “Cel” for Temperature in Celsius."},
};

#endif
