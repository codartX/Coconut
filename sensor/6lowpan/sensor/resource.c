/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <stddef.h>
#include <stdio.h>
#include "resource.h"

resource_type_t *find_resource_type(uint16_t resource_id)
{
    uint16_t i = 0;

    for(;i < resource_types_count; i++) {
        if (resource_types[i].resource_id == resource_id) {
            return &resource_types[i];
        }
    }

    return NULL;
}

int16_t resource_instance_init(resource_instance_t *instance, uint16_t resource_id, 
                               resource_value_u *value, get_resource_value_func get_func, 
                               set_resource_value_func set_func)
{
    resource_type_t *resource_type = NULL;

    if (instance && value) {
        resource_type = find_resource_type(resource_id);
        if (resource_type) {
            instance->resource_type = resource_type;
            instance->next = NULL;
            if (value) {
                memcpy(&(instance->value), value, sizeof(resource_value_u));
            }
            instance->get_func = get_func;
            instance->set_func = set_func;
            return SUCCESS;
        } else {
            PRINTF("resource id invalid!\n");
        }

    }

    return FAIL;
}

int8_t get_resource_value(resource_instance_t *res, resource_value_u *value)
{
    if (!res || !value) {
        return FAIL;
    }
    
    if (res->get_func) {
        res->get_func(value);
        //update
        memcpy(&res->value, value, sizeof(resource_value_u));
    } else {
        memcpy(value, &res->value, sizeof(resource_value_u));
    }
    
    return SUCCESS;
}

int8_t set_resource_value(resource_instance_t *res, resource_value_u *value)
{
    if (!res || !value) {
        return FAIL;
    }
    
    if (res->set_func) {
        res->set_func(value);
    }
    
    memcpy(&res->value, value, sizeof(resource_value_u));
    
    return SUCCESS;
}

int8_t resource_value_compare(resource_instance_t *res_instance, resource_value_u *value)
{
    if (res_instance->resource_type->type == Integer){
        return (value->int_value - res_instance->value.int_value);
    } else if (res_instance->resource_type->type == Float) {
        return (value->float_value - res_instance->value.float_value);
    } else if (res_instance->resource_type->type == String) {
        return strcmp(value->string_value, res_instance->value.string_value);
    } 
    
    return 0;
}
