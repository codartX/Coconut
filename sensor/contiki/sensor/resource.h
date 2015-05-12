/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _RESOURCE_H
#define _RESOURCE_H

#include <stdbool.h>
#include "main.h"
#include "subscriber.h"

#define MAX_RESOURCE_NAME_LEN 64
#define MAX_RESOURCE_STR_VALUE_LEN 32

typedef enum _resource_access_type {
    ReadOnly,
    ReadWrite,
} resource_access_type;

typedef enum _resource_type {
    Integer,
    Boolean,
    Float,
    String,
} resource_type;

typedef union _resource_value_u {
    int32_t int_value;
    uint8_t boolean_value;
    float float_value;
    uint8_t string_value[MAX_RESOURCE_STR_VALUE_LEN];
} resource_value_u;

typedef struct _resource_type_t {
    const uint8_t *resource_name;
    uint32_t  resource_id;
    resource_access_type access_type;
    resource_type type;
    const uint8_t *description;
} resource_type_t;

typedef int32_t (*get_resource_value_func)(resource_value_u *value);
typedef int32_t (*set_resource_value_func)(resource_value_u *value);

typedef struct _resource_instance_t {
    struct _resource_instance_t *next;
    void *parent_obj;
    uint8_t name[MAX_RESOURCE_NAME_LEN];
    resource_type_t *resource_type;
    resource_value_u value;
    get_resource_value_func get_func;
    set_resource_value_func set_func;
    res_subscriber_t *list; 
} resource_instance_t;

extern resource_type_t resource_types[];

resource_type_t *find_resource_type(uint32_t resource_id);

resource_instance_t *resource_instance_alloc();

void resource_instance_free(resource_instance_t *instance);

int32_t resource_instance_init(resource_instance_t *instance, uint8_t *name, uint32_t resource_id, resource_value_u *value, 
                               get_resource_value_func get_func, set_resource_value_func set_func);

int32_t resource_add_subscriber(resource_instance_t *res_instance, res_subscriber_t *res_sub);

int32_t resource_remove_subscriber(resource_instance_t *res_instance, uip_ip6addr_t *ip_addr);

int8_t resource_value_compare(resource_instance_t *res_instance, resource_value_u *value);

#endif
