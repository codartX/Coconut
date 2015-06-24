/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _SESSION_H
#define _SESSION_H

#include <arpa/inet.h>  

#define DEVICE_KEY_SIZE    128

#define DEVICE_PWD_SIZE    128

#define DEVICE_ID_SIZE    8

typedef struct _sensor_session {
    uint8_t device_id[DEVICE_ID_SIZE];
    struct sockaddr_in6 addr;  
    struct _sensor_session *next;
    uint8_t auth_flag;
    uint8_t key[DEVICE_KEY_SIZE];
    uint8_t iv[DEVICE_KEY_SIZE];
    uint8_t pwd[DEVICE_PWD_SIZE];
} sensor_session;

sensor_session *new_session();

void delete_session(sensor_session *session);

sensor_session *find_session(uint8_t *device_id);

#endif
