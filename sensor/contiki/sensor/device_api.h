/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _DEVICE_API_H
#define _DEVICE_API_H

#include "resource.h"


/**
 #define MAX_RESOURCE_STR_VALUE_LEN 32
 
 typedef union _resource_value_u {
 int32_t int_value;
 uint8_t boolean_value;
 float float_value;
 uint8_t string_value[MAX_RESOURCE_STR_VALUE_LEN];
 } resource_value_u;
 **/

int32_t get_temperature(resource_value_u *value);

#endif
