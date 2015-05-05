/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <unistd.h>  
#include <stdio.h>  
#include <arpa/inet.h>  
#include <sys/socket.h>  
#include <string.h>  
#include "cJSON.h"
#include "session.h"
#include "ws-client.h"

#define LOCALPORT 5678 
#define LICENSE_ID "abcd1234" 

noPollCtx  *g_ws_ctx;
noPollConn *g_ws_conn;

int websocket_write (const char *content, int length) 
{
    // FIRST PART: normal send operation
    int tries = 0;
    int bytes_written;
    // do write operation and check
    bytes_written = nopoll_conn_send_binary (g_ws_conn, content, length);
    if (bytes_written == length) {
        // operation completed, just return bytes written
        return bytes_written;
    }

    printf("errno:%d\n", errno);
    perror("error:");
    // SECOND PART: retry in the case of failure
    // some failure found, check errno
    while (tries < 5 && errno == NOPOLL_EWOULDBLOCK && nopoll_conn_pending_write_bytes (g_ws_conn) > 0) {
        // ok, unable to write all data but that data is waiting to be flushed
        // you can return here and then make your application to retry again or
        // try it right now, but with a little pause before continue
        nopoll_sleep (10000); // lets wait 10ns
        // flush and check if write operation completed
        if (nopoll_conn_complete_pending_write (g_ws_conn) == 0)
            return length;

        // limit loop
        tries++;
    }
    // failure, return error code reported by the first call or the last retry
    return bytes_written;
}

void websocket_connect()
{
    char url[64];

    if (g_ws_conn) {
        nopoll_conn_close (g_ws_conn);
        g_ws_conn = NULL;
    }

    if (g_ws_ctx) {
        nopoll_ctx_unref (g_ws_ctx);
        g_ws_ctx = NULL;
    }

    snprintf(url, sizeof(url), "/device_monitor?Id=%s", LICENSE_ID);
    //create websocket client
    while (1) {
        /* create context */
        g_ws_ctx = create_ctx();
        
        /* call to create a connection */
        g_ws_conn = nopoll_conn_new(g_ws_ctx, "www.linkio.me", "9999", NULL, url, NULL, NULL);

        if (!nopoll_conn_is_ok(g_ws_conn)) {
            printf ("ERROR: Expected to find proper client connection status, but found error..\n");
            goto reconnect;
        }
        while (!nopoll_conn_is_ready(g_ws_conn)) {
            if (!nopoll_conn_is_ok(g_ws_conn)) {
                printf ("ERROR: Expected to find proper client connection status, but found error..\n");
                goto reconnect;
            }
            /* wait a bit 10ms */
            printf("wait for conn ready\n");
            nopoll_sleep (10000);
        }

        //success
        printf("websocket connect success\n");
        break;

reconnect:
        printf("websocket connect fail, try reconnect\n");
        nopoll_conn_close (g_ws_conn);
        nopoll_ctx_unref (g_ws_ctx);
        g_ws_conn = NULL;
        g_ws_ctx = NULL;
        sleep(10);
    }  
}

int main(int argc,char *argv[])  
{  
    int sock,len, len1, i = 0;  
    struct sockaddr_in6 addr;  
    int addr_len;  
    unsigned char msg[1024];  
    unsigned char buf[64];  
    cJSON *root = NULL, *node = NULL, *node1 = NULL;
    uint32_t device_class = 0; 
    char *device_id = NULL;
    sensor_session *session = NULL;
    noPollMsg  *ws_msg = NULL;
    char *ws_msg_payload = NULL;
    int flags;
  
    if ((sock = socket(AF_INET6,SOCK_DGRAM, 0)) < 0) {  
        perror("error:");  
        return(1);  
    } else {  
        printf("socket:%d created\n", sock);  
    }  
  
    flags = fcntl(sock, F_GETFL);
    flags |= O_NONBLOCK;
    fcntl(sock, F_SETFL, flags);

    addr_len=sizeof(struct sockaddr_in6);  
    bzero(&addr,sizeof(addr));  
    addr.sin6_family=AF_INET6;  
    addr.sin6_port=htons(LOCALPORT);  
    addr.sin6_addr=in6addr_any;  
  
    if (bind(sock, (struct sockaddr *)&addr, sizeof(addr)) < 0) {  
        perror("connect");  
        return(1);  
    } else {  
        printf("bind ok. Local port:%d\n", LOCALPORT);  
    }

    websocket_connect();

    while(1) {  
        bzero(msg, sizeof(msg));  
        len = recvfrom(sock, msg, sizeof(msg), 0, (struct sockaddr *)&addr, (socklen_t*)&addr_len);  
        if (len > 16) {
            inet_ntop(AF_INET6, &addr.sin6_addr, buf, sizeof(buf));  
            printf("message from ip %s\n", buf);  
            printf("Received message, len:%d\n", len);  
            printf("message:");
            for(i = 0; i < len; i++) {
                printf("%x ", msg[i]);
            }
            printf("\n");
            device_class = *(uint32_t *)&msg[4];
            device_id = &msg[8];          
            printf("device class:0x%x\n", device_class);
            printf("device id:%x:%x:%x:%x:%x:%x:%x:%x\n", 
                   device_id[0],device_id[1],device_id[2],device_id[3],
                   device_id[4],device_id[5],device_id[6],device_id[7]);
            
            //Don't support token and options
            session = find_session(device_class, device_id);
            if (session == NULL) {
                session = new_session();
                if (session) {
                    printf("new session\n"); 
                    session->device_class = device_class;
                    memcpy(session->device_id, device_id, 8);
                    session->addr = addr;
                } else {
                    printf("new session malloc fail\n");
                }
            } else {
                session->addr = addr;
            } 
            
            /* send content text(utf-8) */
            len1 = websocket_write(msg, len);
            if (len1 != len) {
                printf("ERROR: total len:%d, send %d\n", len, len1);
                //TODO: send error to sensor
            } else {
                printf("send success\n");
            }
        }

        //get msg from ws server
        ws_msg = nopoll_conn_get_msg(g_ws_conn);
        if (ws_msg) {
            ws_msg_payload = (char *)nopoll_msg_get_payload(ws_msg);
            len = nopoll_msg_get_payload_size(ws_msg);
            printf("websocket recv message len:%d data:\n", len);
            for(i = 0; i < len; i++) {
                printf("%x ", ws_msg_payload[i]);
            }
            if (len > 16) {
                device_class = *(uint32_t *)&ws_msg_payload[4];
                device_id = &ws_msg_payload[8];          
                session = find_session(device_class, device_id);
                if (session) {
                    printf("find session, send response msg\n");
                    if(sendto(sock, ws_msg_payload, len, 0, 
                                  (struct sockaddr *)&session->addr, 
                                  sizeof(struct sockaddr_in6)) < 0){  
                        printf("send error\n");  
                    }
                } else {
                    //TODO:send error to server
                }  
            }
            /* unref message */
            nopoll_msg_unref (ws_msg);
        }
        if (!nopoll_conn_is_ok(g_ws_conn)) {
            printf ("ERROR: Expected to find proper client connection status, but found error..\n");
            websocket_connect();
        }
        sleep(1);
    }
}  
