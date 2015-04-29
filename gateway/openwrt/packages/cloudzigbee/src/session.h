/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _SESSION_H
#define _SESSION_H

#include <arpa/inet.h>  

typedef struct _sensor_session {
    uint32_t device_class;
    char device_id[8];
    struct sockaddr_in6 addr;  
    struct _sensor_session *next;
} sensor_session;

sensor_session *new_session();

void delete_session(sensor_session *session);

sensor_session *find_session(uint32_t device_class, char *device_id);

#endif
