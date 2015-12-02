/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "object.h"

int16_t object_instance_init(object_instance_t *object, uint8_t *name, uint16_t object_id)
{
    if (object && name) {
        strncpy(object->name, name, MAX_OBJECT_NAME_LEN);
        object->object_id = object_id;
        PRINTF("obj id:%d, name:%s\n", object->object_id, object->name);
        object->res_list = NULL;
        return SUCCESS;
    }

    return FAIL;
}

int16_t object_instance_insert_resource(object_instance_t *object, resource_instance_t *resource)
{
    resource_instance_t *tmp = NULL;

    if (object && resource) {
        tmp = object->res_list;
        while(tmp) {
            if(resource->resource_type->resource_id == tmp->resource_type->resource_id) {
                PRINTF("already has the same name resource, id:%d\n", resource->resource_type->resource_id);
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

resource_instance_t *object_instance_find_resource(object_instance_t *object, uint16_t resource_id)
{
    resource_instance_t *tmp = NULL;

    if (object) {
        tmp = object->res_list;
        while(tmp) {
            if(tmp->resource_type->resource_id == resource_id) {
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

