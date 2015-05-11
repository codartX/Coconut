/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "object.h"

object_instance_t *object_instance_alloc()
{
    object_instance_t *instance = NULL;
    instance = (object_instance_t *)malloc(sizeof(object_instance_t));
    if (!instance) {
        PRINTF("ipso object instance alloc fail!\n");
        return NULL;
    }

    return instance;
}

void object_instance_free(object_instance_t *instance)
{
    resource_instance_t *tmp = NULL, *tmp1 = NULL;

    if (instance) {
        tmp = instance->res_list;
        while(tmp) {
            tmp1 = tmp->next;
            resource_instance_free(tmp);
            tmp = tmp1;
        }
        free(instance);
    }

    return;
}

int32_t object_instance_init(object_instance_t *object, uint8_t *name, uint32_t object_id)
{
    if (object && name) {
        strncpy(object->name, name, MAX_OBJECT_NAME_LEN);
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
            if(strncmp(tmp->name, resource->name, MAX_RESOURCE_NAME_LEN) == 0) {
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

int32_t object_instance_remove_resource(object_instance_t *object, uint8_t *resource_name)
{
    resource_instance_t *cur = NULL, *pre = NULL;

    if (object && resource_name) {
        cur = object->res_list;
        while(cur) {
            if(strncmp(cur->name, resource_name, MAX_RESOURCE_NAME_LEN) == 0) {
                if (!pre) {
                    object->res_list = cur->next;
                } else {
                    pre->next = cur->next;
                }
                resource_instance_free(cur);
                return SUCCESS;
            }
            pre = cur;
            cur = cur->next;
        }
    } else {
        PRINTF("invalid object or resource name\n");
        return FAIL;
    }

    return SUCCESS;
}

resource_instance_t *object_instance_find_resource(object_instance_t *object, uint8_t *resource_name)
{
    resource_instance_t *tmp = NULL;

    if (object && resource_name) {
        tmp = object->res_list;
        while(tmp) {
            if(strncmp(tmp->name, resource_name, MAX_RESOURCE_NAME_LEN) == 0) {
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

