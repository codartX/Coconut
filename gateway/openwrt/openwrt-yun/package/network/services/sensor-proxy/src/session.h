/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#ifndef _SESSION_H
#define _SESSION_H

#include <stdint.h>
#include <netinet/in.h>

#define DEVICE_KEY_SIZE    32

#define DEVICE_PWD_SIZE    32

#define DEVICE_ID_SIZE    8

typedef struct _sensor_session {
    uint8_t device_id[DEVICE_ID_SIZE];
    struct sockaddr_in6 addr;  
    struct _sensor_session *next;
    uint8_t auth_flag;
    uint16_t client_hello_seq;
    uint8_t master_key_version;
    uint8_t random[DEVICE_KEY_SIZE];
    uint8_t pwd[DEVICE_PWD_SIZE];
    uint8_t master_key[DEVICE_KEY_SIZE];
} sensor_session;

sensor_session *new_session();

void delete_session(sensor_session *session);

sensor_session *find_session(uint8_t *device_id);

sensor_session *find_session_by_addr(struct sockaddr_in6 addr);

#endif
