/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "object.h"

int32_t object_instance_init(object_instance_t *object, const uint8_t *name, uint32_t object_id)
{
    if (object && name) {
        object->name = name;
        object->object_id = object_id;
        object->res_list = NULL;
        return SUCCESS;
    }

    return FAIL;
}

int32_t object_instance_insert_resource(object_instance_t *object, resource_instance_t *resource)
{
    resource_instance_t *tmp = NULL;

    if (object && resource) {
        tmp = object->res_list;
        while(tmp) {
            if(strcmp(tmp->name, resource->name) == 0) {
                PRINTF("already has the same name resource\n");
                return 0;
            }
            tmp = tmp->next;
        }
        resource->next = object->res_list;
        object->res_list = resource;
        resource->parent_obj = object;
        return SUCCESS;
    } else {
        PRINTF("object is NULL\n");
    }

    return FAIL;
}

resource_instance_t *object_instance_find_resource(object_instance_t *object, uint8_t *resource_name)
{
    resource_instance_t *tmp = NULL;

    if (object && resource_name) {
        tmp = object->res_list;
        while(tmp) {
            if(strcmp(tmp->name, resource_name) == 0) {
                return tmp;
            }
            tmp = tmp->next;
        }
    } else {
        PRINTF("invalid object or resource name\n");
        return NULL;
    }

    return NULL;

}

