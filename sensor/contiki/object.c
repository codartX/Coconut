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
        printf("ipso object instance alloc fail!\n");
        return NULL;
    }

    return instance;
}

void object_instance_free(object_instance_t *instance)
{
    resource_instance_t *tmp = NULL, *tmp1 = NULL;

    if (instance) {
        tmp = instance->list;
        while(tmp) {
            tmp1 = tmp->next;
            resource_instance_free(tmp);
            tmp = tmp1;
        }
        free(instance);
    }

    return;
}

int object_instance_init(object_instance_t *object, char *name, int object_id)
{
    if (object && name) {
        strncpy(object->name, name, MAX_OBJECT_NAME_LEN);
        object->object_id = object_id;
        object->list = NULL;
        object->next = NULL;
        return 1;
    }

    return 0;
}

int object_instance_insert_resource(object_instance_t *object, resource_instance_t *resource)
{
    resource_instance_t *tmp = NULL;

    if (object && resource) {
        tmp = object->list;
        while(tmp) {
            if(strncmp(tmp->name, resource->name, MAX_RESOURCE_NAME_LEN) == 0) {
                printf("already has the same name resource\n");
                return 0;
            }
            tmp = tmp->next;
        }
        resource->next = object->list;
        object->list = resource;
        return 1;
    } else {
        printf("object is NULL\n");
    }

    return 0;
}

int object_instance_remove_resource(object_instance_t *object, char *resource_name)
{
    resource_instance_t *tmp = NULL, *tmp1 = NULL;

    if (object && resource_name) {
        tmp = object->list;
        tmp1 = tmp;
        while(tmp) {
            if(strncmp(tmp->name, resource_name, MAX_RESOURCE_NAME_LEN) == 0) {
                if (tmp != object->list) {
                    tmp1->next = tmp->next;
                } else {
                    object->list = tmp->next;
                }
                resource_instance_free(tmp);
                return 1;
            }
            tmp1 = tmp;
            tmp = tmp->next;
        }
    } else {
        printf("invalid object or resource name\n");
        return 0;
    }

    return 1;
}

resource_instance_t *object_instance_find_resource(object_instance_t *object, char *resource_name)
{
    resource_instance_t *tmp = NULL;

    if (object && resource_name) {
        tmp = object->list;
        while(tmp) {
            if(strncmp(tmp->name, resource_name, MAX_RESOURCE_NAME_LEN) == 0) {
                return tmp;
            }
            tmp = tmp->next;
        }
    } else {
        printf("invalid object or resource name\n");
        return NULL;
    }

    return NULL;

}

object_instance_t *new_device_info_object(char *manufacturer, char *model, 
                                                    char *serial, char *hw_version, 
                                                    char *sw_version)
{
    resource_instance_t *res_instance = NULL;
    object_instance_t *obj_instance = NULL;
    resource_value_u value;

    obj_instance = object_instance_alloc();
    if (!obj_instance) {
        return NULL;
    }
    strcpy(obj_instance->name, "Device Information");

    /*manufacturer*/
    res_instance = resource_instance_alloc();
    if (!res_instance) {
        object_instance_free(obj_instance);
        return NULL;
    }
    strcpy(value.string_value, manufacturer);
    if (!resource_instance_init(res_instance, "Manufacturer", 5100, &value, NULL)) {
        object_instance_free(obj_instance);
        return NULL;
    }
    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        object_instance_free(obj_instance);
        return NULL;
    }

    /*model*/
    res_instance = resource_instance_alloc();
    if (!res_instance) {
        object_instance_free(obj_instance);
        return NULL;
    }
    strcpy(value.string_value, model);
    if (!resource_instance_init(res_instance, "Model", 5101, &value, NULL)) {
        object_instance_free(obj_instance);
        return NULL;
    }
    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        object_instance_free(obj_instance);
        return NULL;
    }

    /*serial*/
    res_instance = resource_instance_alloc();
    if (!res_instance) {
        object_instance_free(obj_instance);
        return NULL;
    }
    strcpy(value.string_value, serial);
    if (!resource_instance_init(res_instance, "Serial", 5104, &value, NULL)) {
        object_instance_free(obj_instance);
        return NULL;
    }
    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        object_instance_free(obj_instance);
        return NULL;
    }

    /*hardware version*/
    res_instance = resource_instance_alloc();
    if (!res_instance) {
        object_instance_free(obj_instance);
        return NULL;
    }
    strcpy(value.string_value, hw_version);
    if (!resource_instance_init(res_instance, "Hardware Version", 5102, &value, NULL)) {
        object_instance_free(obj_instance);
        return NULL;
    }
    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        object_instance_free(obj_instance);
        return NULL;
    }

    /*software version*/
    res_instance = resource_instance_alloc();
    if (!res_instance) {
        object_instance_free(obj_instance);
        return NULL;
    }
    strcpy(value.string_value, sw_version);
    if (!resource_instance_init(res_instance, "Software Version", 5103, &value, NULL)) {
        object_instance_free(obj_instance);
        return NULL;
    }
    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        object_instance_free(obj_instance);
        return NULL;
    }

    return obj_instance;
}

object_instance_t *new_temperature_object(char *name, float temperature, 
                                                    float min, float max, char *unit)
{
    resource_instance_t *res_instance = NULL;
    object_instance_t *obj_instance = NULL;
    resource_value_u value;

    obj_instance = object_instance_alloc();
    if (!obj_instance) {
        return NULL;
    }

    memset(obj_instance->name, 0x0, MAX_OBJECT_NAME_LEN);
    if (name) {
        strncpy(obj_instance->name, name, MAX_OBJECT_NAME_LEN);
    }

    /*Sensor value*/
    res_instance = resource_instance_alloc();
    if (!res_instance) {
        object_instance_free(obj_instance);
        return NULL;
    }
    value.float_value = temperature;
    if (!resource_instance_init(res_instance, "temperature value", 5700, 
                                &value, NULL)) {
        object_instance_free(obj_instance);
        return NULL;
    }
    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        object_instance_free(obj_instance);
        return NULL;
    }

    /*Sensor value min*/
    res_instance = resource_instance_alloc();
    if (!res_instance) {
        object_instance_free(obj_instance);
        return NULL;
    }
    value.float_value = min;
    if (!resource_instance_init(res_instance, "temperature min value", 5603, 
                                &value, NULL)) {
        object_instance_free(obj_instance);
        return NULL;
    }
    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        object_instance_free(obj_instance);
        return NULL;
    }

    /*Sensor value max*/
    res_instance = resource_instance_alloc();
    if (!res_instance) {
        object_instance_free(obj_instance);
        return NULL;
    }
    value.float_value = max;
    if (!resource_instance_init(res_instance, "temperature max value", 5604, 
                                &value, NULL)) {
        object_instance_free(obj_instance);
        return NULL;
    }
    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        object_instance_free(obj_instance);
        return NULL;
    }

    /*Sensor value unit*/
    if (unit) {
        res_instance = resource_instance_alloc();
        if (!res_instance) {
            object_instance_free(obj_instance);
            return NULL;
        }
        strcpy(value.string_value, unit);
        if (!resource_instance_init(res_instance, "temperature value unit", 5701, 
                                    &value, NULL)) {
            object_instance_free(obj_instance);
            return NULL;
        }
        if (!object_instance_insert_resource(obj_instance, res_instance)) {
            object_instance_free(obj_instance);
            return NULL;
        }
    }

    return obj_instance;
}
