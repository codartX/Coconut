/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _OBJECT_H
#define _OBJECT_H

#include "main.h"
#include "resource.h"

typedef struct _object_instance_t {
    struct _object_instance_t *next;
    void *parent_dev;
    const uint8_t *name;
    uint32_t object_id;
    resource_instance_t *res_list;
} object_instance_t;

int32_t object_instance_init(object_instance_t *object, const uint8_t *name, uint32_t object_id);

int32_t object_instance_insert_resource(object_instance_t *object, resource_instance_t *resource);

resource_instance_t *object_instance_find_resource(object_instance_t *object, uint8_t *resource_name);

#endif

