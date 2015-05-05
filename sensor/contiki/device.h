/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _DEVICE_H
#define _DEVICE_H

#include "policy.h"
#include "object.h"
#include "resource.h"

typedef struct _device_t {
    char   device_id[8];
    object_instance_t *obj_list;
    dev_policy_t *policy_list; 
    int timestamp;
} device_t;

extern device_t g_device;

int device_init(char *device_id);

int device_insert_object(object_instance_t *object);

int device_remove_object(char *object_name);

object_instance_t *device_find_object(char *object_name);

int device_insert_policy(dev_policy_t *policy);

void device_remove_policy(int policy_id);

dev_policy_t *device_find_policy(int policy_id);

int new_device();

#endif
