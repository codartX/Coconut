/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include "main.h"
#include "device_profile.h"
#include "device.h"
#include "device_api.h"

void create_device()
{
    int32_t retval = FAIL;
    resource_instance_t *res_instance = NULL;
    object_instance_t *obj_instance = NULL;
    resource_value_u value;
       
    retval = device_init("1234", "test_dev");
    if (retval == FAIL) {
        PRINTF("device init fail\n");
        return;
    }

    obj_instance = object_instance_alloc();
    if (!obj_instance) {
        device_deinit();
        return;
    }

    object_instance_init(obj_instance, "test_obj", 4321);

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    strcpy(value.string_value, "abc");
    if (!resource_instance_init(res_instance, "test_res1", 5100, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    obj_instance = object_instance_alloc();
    if (!obj_instance) {
        device_deinit();
        return;
    }

    object_instance_init(obj_instance, "test_res2", 4322);

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    value.int_value = 2468;
    if (!resource_instance_init(res_instance, "test_res2", 5108, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

}
