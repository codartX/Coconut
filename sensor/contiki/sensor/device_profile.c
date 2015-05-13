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

void create_device()
{
    int32_t retval = FAIL;
    resource_instance_t *res_instance = NULL;
    object_instance_t *obj_instance = NULL;
    resource_value_u value;
       
    retval = device_init("0123456789ABCDEF0");
    if (retval == FAIL) {
        PRINTF("device init fail\n");
        return;
    }

    obj_instance = object_instance_alloc();
    if (!obj_instance) {
        device_deinit();
        return;
    }

    object_instance_init(obj_instance, "Device Information", 3100);

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    strcpy(value.string_value, "Temperature Sensor");
    if (!resource_instance_init(res_instance, "Name", 5105, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    strcpy(value.string_value, "Cisco");
    if (!resource_instance_init(res_instance, "Manufacturer", 5100, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    strcpy(value.string_value, "NHK1");
    if (!resource_instance_init(res_instance, "Model", 5101, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    strcpy(value.string_value, "01");
    if (!resource_instance_init(res_instance, "Hardware Version", 5102, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    strcpy(value.string_value, "01");
    if (!resource_instance_init(res_instance, "Software Version", 5103, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    strcpy(value.string_value, "e23344fa11");
    if (!resource_instance_init(res_instance, "Serial", 5104, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    if (!resource_instance_init(res_instance, "Power Supply", 5106, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    value.float_value = 5.0;
    if (!resource_instance_init(res_instance, "Power Supply Voltage", 5107, 
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

    object_instance_init(obj_instance, "Temperature Sensor", 3303);

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    get_temperature(&value);
    if (!resource_instance_init(res_instance, "Temperature", 5700, 
                                &value, get_temperature, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    strcpy(value.string_value, "C");
    if (!resource_instance_init(res_instance, "Units", 5701, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    value.float_value = -20.0;
    if (!resource_instance_init(res_instance, "Min Measured Value", 5601, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

    res_instance = resource_instance_alloc();
    if (!res_instance) {
        device_deinit();
        return;
    }

    value.float_value = 50.0;
    if (!resource_instance_init(res_instance, "Max Measured Value", 5602, 
                                &value, NULL, NULL)) {
        device_deinit();
        return;
    }

    if (!object_instance_insert_resource(obj_instance, res_instance)) {
        device_deinit();
        return;
    }

}
