/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */

#include <unistd.h>  
#include <stdio.h>  
#include <stdbool.h>
#include <arpa/inet.h>  
#include <sys/socket.h>  
#include <string.h> 
#include "cJSON.h"
#include "session.h"
#include "ws-client.h"
#include "message.h"
#include <openssl/evp.h>
#include <openssl/aes.h>

#define LOCALPORT 5678 
#define LICENSE_ID "abcd1234" 

noPollCtx  *g_ws_ctx;
noPollConn *g_ws_conn;
uint8_t session_key[128];
uint8_t session_iv[128];

void generate_key()
{
    RAND_bytes(session_key, sizeof(session_key));
    RAND_bytes(session_iv, sizeof(session_iv));
    
    return;
}

void string_to_hex(uint8_t *hexstring, uint8_t *hex_val, uint8_t len)
{
    uint8_t *pos = hexstring;
    uint8_t i;
        
    /* WARNING: no sanitization or error-checking whatsoever */
    for(i = 0; i < len; i++) {
        sscanf(pos, "%2hhx", &hex_val[i]);
        pos += 2 * sizeof(uint8_t);
    }
        
    return;
}

void hex_to_string(uint8_t *string, uint8_t *hex_val, uint8_t len)
{
    uint8_t *pos = string;
    uint8_t i;
    
    /* WARNING: no sanitization or error-checking whatsoever */
    for(i = 0; i < len; i++) {
        sprintf(pos, "%2hhx", &hex_val[i]);
        pos += 2 * sizeof(uint8_t);
    }
    
    return;
}

int websocket_write (const char *content, int length)
{
    // FIRST PART: normal send operation
    uint8_t tries = 0;
    int32_t bytes_written;
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
    uint8_t url[64];

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
    int32_t sock,len, len1, len2, i = 0, retcode;
    struct sockaddr_in6 addr;  
    uint8_t addr_len;
    uint8_t msg[1024];
    uint8_t buf[512];
    uint8_t buf1[512];
    cJSON *root = NULL, *node = NULL, *node1 = NULL, *node2 = NULL;
    uint8_t *device_id = NULL;
    sensor_session *session = NULL;
    noPollMsg  *ws_msg = NULL;
    uint8_t *ws_msg_payload = NULL;
    int32_t flags;
    AES_KEY wctx;
    EVP_CIPHER_CTX e_ctx;
    EVP_CIPHER_CTX d_ctx;
  
    generate_key();
    
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
        if (len > 0 && len > MSG_HEAD_LEN) {
            inet_ntop(AF_INET6, &addr.sin6_addr, buf, sizeof(buf));  
            printf("message from ip %s\n", buf);  
            printf("Received message, len:%d\n", len);  
            printf("message:");
            for(i = 0; i < len; i++) {
                printf("%x ", msg[i]);
            }
            printf("\n");
            device_id = get_msg_device_id(msg);
            printf("device id:%x:%x:%x:%x:%x:%x:%x:%x\n", 
                   device_id[0],device_id[1],device_id[2],device_id[3],
                   device_id[4],device_id[5],device_id[6],device_id[7]);
            
            //Don't support token and options
            session = find_session(device_id);
            if (session == NULL) {
                session = new_session();
                if (session) {
                    printf("new session\n");
                    memcpy(session->device_id, device_id, DEVICE_ID_SIZE);
                    session->addr = addr;
                } else {
                    printf("new session malloc fail\n");
                }
            } else if (session->auth_flag == true) {
                session->addr = addr;
                if (get_msg_method(msg) == METHOD_AUTH) {
                    root  = cJSON_Parse(get_msg_parameters(msg));
                    if (root) {
                        node = cJSON_GetArrayItem(root, 0);
                        if (node) {
                            string_to_hex(node1->valuestring, buf, strlen(node1->valuestring));
                            
                            EVP_CIPHER_CTX_init(&e_ctx);
                            EVP_EncryptInit_ex(&e_ctx, EVP_aes_128_cbc(), NULL, session->key, session->iv);
                            EVP_CIPHER_CTX_init(&d_ctx);
                            EVP_DecryptInit_ex(&d_ctx, EVP_aes_128_cbc(), NULL, session->key, session->iv);
                            
                            flags = false;
                            retcode = RETCODE_ENCODE_DECODE_FAIL;
                            
                            if(EVP_DecryptUpdate(&e_ctx, buf1, &len1, buf, strlen(node1->valuestring))) {
                                if (EVP_DecryptFinal_ex(&e_ctx, buf1 + len1, &len2)) {
                                    if(memcmp(buf1, session->pwd, len1 + len2)) {
                                        retcode = RETCODE_AUTH_FAIL;
                                        goto send_msg;
                                    }
                                }
                            }
                            
                            if(EVP_EncryptUpdate(&e_ctx, buf, &len1, session_key, 128)) {
                                if (EVP_EncryptFinal_ex(&e_ctx, buf + len1, &len2)) {
                                    hex_to_string(buf1, buf, len1);
                                    sprintf(msg + sizeof(msg_header_t), "[0,%s,", buf1);
                                    len = sizeof(msg_header_t) + strlen(msg + sizeof(msg_header_t));
                                    
                                    if(EVP_EncryptUpdate(&e_ctx, buf, &len1, session_iv, 128)) {
                                        if (EVP_EncryptFinal_ex(&e_ctx, buf + len1, &len2)) {
                                            hex_to_string(buf1, buf, len1);
                                            sprintf(msg + len, "%s]", buf1);
                                            len += strlen(msg + len);
                                            flags = true;
                                        }
                                    }
                                }
                            }
send_msg:
                            if (!flags) {
                                sprintf(msg + sizeof(msg_header_t), "[%d]", retcode);
                                len = sizeof(msg_header_t) + strlen(msg + sizeof(msg_header_t));
                            }

                            get_msg_type(msg) = TYPE_RESPONSE;
                            
                            if(sendto(sock, msg, len, 0,
                                      (struct sockaddr *)&session->addr,
                                      sizeof(struct sockaddr_in6)) < 0){
                                printf("send error\n");
                            }
                            
                            goto websocket_handle;
                        }
                    }
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

websocket_handle:
        //get msg from ws server
        ws_msg = nopoll_conn_get_msg(g_ws_conn);
        if (ws_msg) {
            ws_msg_payload = (char *)nopoll_msg_get_payload(ws_msg);
            len = nopoll_msg_get_payload_size(ws_msg);
            printf("websocket recv message len:%d data:\n", len);
            for(i = 0; i < len; i++) {
                printf("%x ", ws_msg_payload[i]);
            }
            if (len >= MSG_HEAD_LEN) {
                device_id = get_msg_device_id(ws_msg_payload);
                session = find_session(device_id);
                if (session) {
                    memcpy(msg, ws_msg_payload, len);
                    if (get_msg_method(ws_msg_payload) == METHOD_AUTH) {
                        root  = cJSON_Parse(get_msg_parameters(ws_msg_payload));
                        if (root) {
                            node = cJSON_GetArrayItem(root, 0);
                            if (node && node->valueint == 0) {
                                node1 = cJSON_GetArrayItem(root, 1);
                                if (node1 && strlen(node1->valuestring) == DEVICE_KEY_SIZE) {
                                    string_to_hex(node1->valuestring, session->key, DEVICE_KEY_SIZE);
                                    node1 = cJSON_GetArrayItem(root, 2);
                                    if (node1 && strlen(node1->valuestring) == DEVICE_KEY_SIZE) {
                                        string_to_hex(node1->valuestring, session->iv, DEVICE_KEY_SIZE);
                                        node1 = cJSON_GetArrayItem(root, 3);
                                        if (node1 && strlen(node1->valuestring) == DEVICE_PWD_SIZE) {
                                            string_to_hex(node1->valuestring, session->pwd, DEVICE_PWD_SIZE);
                                            session->auth_flag = true;
                                            
                                            EVP_CIPHER_CTX_init(&e_ctx);
                                            EVP_EncryptInit_ex(&e_ctx, EVP_aes_128_cbc(), NULL, session->key, session->iv);
                                        
                                            flags = false;
                                            retcode = RETCODE_ENCODE_DECODE_FAIL;
                                            
                                            if(EVP_EncryptUpdate(&e_ctx, buf, &len1, session_key, 128)) {
                                                if (EVP_EncryptFinal_ex(&e_ctx, buf + len1, &len2)) {
                                                    hex_to_string(buf1, buf, len1);
                                                    sprintf(msg + sizeof(msg_header_t), "[0,%s,", buf1);
                                                    len = sizeof(msg_header_t) + strlen(msg + sizeof(msg_header_t));
                                                    
                                                    if(EVP_EncryptUpdate(&e_ctx, buf, &len1, session_iv, 128)) {
                                                        if (EVP_EncryptFinal_ex(&e_ctx, buf + len1, &len2)) {
                                                            hex_to_string(buf1, buf, len1);
                                                            sprintf(msg + len, "%s]", buf1);
                                                            len += strlen(msg + len);
                                                            flags = true;
                                                        }
                                                    }
                                                }
                                            }
                                            
                                            if (!flags) {
                                                sprintf(msg + sizeof(msg_header_t), "[%d]", retcode);
                                                len = sizeof(msg_header_t) + strlen(msg + sizeof(msg_header_t));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    printf("find session, send response msg\n");
                    if(sendto(sock, msg, len, 0,
                                (struct sockaddr *)&session->addr,
                                sizeof(struct sockaddr_in6)) < 0){
                        printf("send error\n");
                    }
                } else {
                    //TODO:send error to server
                }  
            }
message_done:
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
