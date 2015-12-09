/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _RESOURCE_H
#define _RESOURCE_H

#include <stdbool.h>
#include "main.h"

#define MAX_RES_STR_VALUE_LEN    8 

typedef enum _resource_access_type {
    ReadOnly,
    ReadWrite,
} resource_access_type;

typedef enum _resource_type {
    Integer,
    Float,
    String,
} resource_type;

typedef union _resource_value_u {
    int16_t int_value;
    float float_value;
    uint8_t string_value[MAX_RES_STR_VALUE_LEN];
} resource_value_u;

typedef struct _resource_type_t {
    uint16_t  resource_id;
    resource_access_type access_type;
    resource_type type;
} resource_type_t;

typedef int16_t (*get_resource_value_func)(resource_value_u *value);
typedef int16_t (*set_resource_value_func)(resource_value_u *value);

typedef struct _resource_instance_t {
    struct _resource_instance_t *next;
    void *parent_obj;
    resource_type_t *resource_type;
    resource_value_u value;
    get_resource_value_func get_func;
    set_resource_value_func set_func;
} resource_instance_t;

extern resource_type_t resource_types[];
extern uint16_t resource_types_count;

resource_type_t *find_resource_type(uint16_t resource_id);

int16_t resource_instance_init(resource_instance_t *instance, uint16_t resource_id, 
                               resource_value_u *value, get_resource_value_func get_func, 
                               set_resource_value_func set_func);

int8_t resource_value_compare(resource_instance_t *res_instance, resource_value_u *value);

int8_t get_resource_value(resource_instance_t *res, resource_value_u *value);

int8_t set_resource_value(resource_instance_t *res, resource_value_u *value);

#endif
