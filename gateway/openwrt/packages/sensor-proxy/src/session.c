/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <stdlib.h>  
#include "session.h"

static sensor_session *header;

sensor_session *new_session()
{
    sensor_session *new_sensor_session = NULL;
    new_sensor_session = (sensor_session *)malloc(sizeof(sensor_session));
    if (new_sensor_session) {
        if (header) {
            new_sensor_session->next = header->next;
        } else {
            new_sensor_session->next = NULL;
        }
        header = new_sensor_session;
    }
    return new_sensor_session;
}

void delete_session(sensor_session *session)
{
    sensor_session *s = header; 
    sensor_session *prev = header;

    while(s) {
        if (s->device_class == session->device_class &&
            memcmp(s->device_id, session->device_id, 8) == 0) {
            prev->next = s->next;
            free(s);
            if (s == header) {
                header = NULL;
            } 
        }
    }
}

sensor_session *find_session(uint8_t *device_id)
{
    sensor_session *s = header;
    while (s) {
        if (device_class == s->device_class && 
            memcmp(device_id, s->device_id, 8) == 0) {
            return s;
        }
        s = s->next;
    }
    return NULL;
}

