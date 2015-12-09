/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _OBJECT_H
#define _OBJECT_H

#include "main.h"
#include "resource.h"
#include "subscriber.h"

#define MAX_OBJECT_NAME_LEN    8

typedef struct _object_instance_t {
    struct _object_instance_t *next;
    void *parent_dev;
    uint8_t name[MAX_OBJECT_NAME_LEN];
    uint16_t object_id;
    resource_instance_t *res_list;
    subscriber_t *sub_list; 
} object_instance_t;

int16_t object_instance_init(object_instance_t *object, uint8_t *name, uint16_t object_id);

int16_t object_instance_insert_resource(object_instance_t *object, resource_instance_t *resource);

resource_instance_t *object_instance_find_resource(object_instance_t *object, uint16_t resource_id);

int16_t object_add_subscriber(object_instance_t *instance, subscriber_t *sub);

int16_t object_remove_subscriber(object_instance_t *instance, uip_ip6addr_t *ip_addr);
#endif

