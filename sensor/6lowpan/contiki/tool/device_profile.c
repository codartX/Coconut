/*
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 *
 *  Don't modify this file, auto generated.
 */

#include "main.h"
#include "device_profile.h"
#include "device.h"
#include "device_api.h"

uint32_t g_send_interval = 30;
object_instance_t g_object_devinfo;
resource_instance_t g_resource_name;
object_instance_t g_object_temp;
resource_instance_t g_resource_sensor_value;
resource_instance_t g_resource_units;

bool create_device()
{
    int16_t retval = FAIL;
    resource_instance_t *res_instance = NULL;
    object_instance_t *obj_instance = NULL;
    subscriber_t *sub = NULL;
    resource_value_u value;
    uint8_t device_id[] = {1,2,3,4,
                           5,6,7,8};
       
    retval = device_init(device_id);
    if (retval == FAIL) {
        PRINTF("device init fail\n");
        return false;
    }


    obj_instance = &g_object_devinfo;

    object_instance_init(obj_instance, "DevInfo", 3100);
   
    if (!device_insert_object(obj_instance)) {
        return false;
    }

    strncpy(value.string_value, "Temp Sensor", MAX_RES_STR_VALUE_LEN);

    res_instance = &g_resource_name;

    if (!resource_instance_init(res_instance, 5105, 
                                &value, NULL, NULL)) {
        return false;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        return false;
    }


    obj_instance = &g_object_temp;

    object_instance_init(obj_instance, "Temp", 3303);
   
    if (!device_insert_object(obj_instance)) {
        return false;
    }

    get_temperature(&value);

    res_instance = &g_resource_sensor_value;

    if (!resource_instance_init(res_instance, 5700, 
                                &value, get_temperature, NULL)) {
        return false;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        return false;
    }

    strncpy(value.string_value, "C", MAX_RES_STR_VALUE_LEN);

    res_instance = &g_resource_units;

    if (!resource_instance_init(res_instance, 5701, 
                                &value, NULL, NULL)) {
        return false;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        return false;
    }

    obj_instance = device_find_object("Temp");
    if (obj_instance) {
        sub = subscriber_alloc();
        if (!sub) {
            return false;
        }
        subscriber_report_type_init(sub, NULL, NULL);
        object_add_subscriber(obj_instance, sub);
    };

    return true;
}
