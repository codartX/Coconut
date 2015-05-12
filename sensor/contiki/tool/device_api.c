/*  
 *  Created by Jun Fang on 14-11-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */ 

#include "dev/adc-sensor.h"
#include "device_api.h"

/**
 #define MAX_RESOURCE_STR_VALUE_LEN 32
 
 typedef union _resource_value_u {
     int32_t int_value;
     uint8_t boolean_value;
     float float_value;
     uint8_t string_value[MAX_RESOURCE_STR_VALUE_LEN];
 } resource_value_u;
 **/

float get_temperature(void *arg)
{
    /* Sensor Values */
    static int rv;
    static struct sensors_sensor *sensor;
    static float sane = 0;
    static int dec;
    static float frac;

    /*
     * Request some ADC conversions
     * Return value -1 means sensor not available or turned off in conf
     */
    sensor = sensors_find(ADC_SENSOR);
    if(!sensor) {
        return -273.15;
    }
    //leds_on(LEDS_RED);
    /*
     * Temperature:
     * Using 1.25V ref. voltage (1250mV).
     * Typical AD Output at 25°C: 1480
     * Typical Co-efficient     : 4.5 mV/°C
     *
     * Thus, at 12bit decimation (and ignoring the VDD co-efficient as well
     * as offsets due to lack of calibration):
     *
     *          AD - 1480
     * T = 25 + ---------
     *              4.5
     */
    rv = sensor->value(ADC_SENSOR_TYPE_TEMP);
    if(rv == -1) {
        return -273.15;
    }
    sane = 25 + ((rv - 1480) / 4.5);
    dec = sane;
    frac = sane - dec;
    //PRINTF("  Temp=%d.%02u C (%d)\n", dec, (unsigned int)(frac*100), rv);
    return sane;
}
