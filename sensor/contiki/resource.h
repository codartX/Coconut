/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _RESOURCE_H
#define _RESOURCE_H

#include <stdbool.h>
#include "subscriber.h"

#define MAX_RESOURCE_NAME_LEN 64
#define MAX_RESOURCE_STR_VALUE_LEN 16

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
    int int_value;
    char boolean_value;
    float float_value;
    char string_value[MAX_RESOURCE_STR_VALUE_LEN];
} resource_value_u;

typedef struct _resource_type_t {
    const char *resource_name;
    int  resource_id;
    resource_access_type access_type;
    resource_type type;
    const char *description;
} resource_type_t;

typedef resource_value_u (*get_resource_value_func)();

typedef struct _resource_instance_t {
    struct _resource_instance_t *next;
    char name[MAX_RESOURCE_NAME_LEN];
    resource_type_t *resource_type;
    resource_value_u value;
    get_resource_value_func func;
    res_subscriber_t *list; 
} resource_instance_t;

extern resource_type_t resource_types[];

resource_type_t *find_resource_type(int resource_id);

resource_instance_t *resource_instance_alloc();

void resource_instance_free(resource_instance_t *instance);

int resource_instance_init(resource_instance_t *instance, char *name, int resource_id, resource_value_u *value, get_resource_value_func func);

int resource_add_subscriber(resource_instance_t *res_instance, res_subscriber_t *res_sub);

int resource_delete_subscriber(resource_instance_t *res_instance, uip_ip6addr_t *ip_addr);

#endif
