/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _OBJECT_H
#define _OBJECT_H

#include "resource.h"
#include "ipso_object.h"

#define MAX_OBJECT_NAME_LEN 64

typedef struct _object_instance_t {
    struct _object_instance_t *next;
    char name[MAX_OBJECT_NAME_LEN];
    int object_id;
    resource_instance_t *list;
} object_instance_t;

object_instance_t *object_instance_alloc();

void object_instance_free(object_instance_t *instance);

int object_instance_init(object_instance_t *object, char *name, int object_id);

int object_instance_insert_resource(object_instance_t *object, resource_instance_t *resource);

int object_instance_remove_resource(object_instance_t *object, char *resource_name);

resource_instance_t *object_instance_find_resource(object_instance_t *object, char *resource_name);

object_instance_t *new_device_info_object(char *manufacturer, char *model, 
                                          char *serial, char *hw_version, 
                                          char *sw_version);

object_instance_t *new_temperature_object(char *name, float temperature, 
                                          float min, float max, char *unit);
#endif

