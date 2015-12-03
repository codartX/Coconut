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
#include <pthread.h>
#include "utils.h"
#include "crypto.h"

#define MAIN_SOCKET_PORT 5678 
#define LICENSE_ID "abcd1234" 

#define MAX_MSG_LEN    1024

noPollCtx  *g_ws_ctx;
noPollConn *g_ws_conn;

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
    uint8_t i = 20, j = 1;

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
    while (j) {
        /* create context */
        g_ws_ctx = create_ctx();
        
        /* call to create a connection */
        g_ws_conn = nopoll_conn_new(g_ws_ctx, "139.196.21.76", "9999", NULL, url, NULL, NULL);

        if (!nopoll_conn_is_ok(g_ws_conn)) {
            printf ("ERROR: Expected to find proper client connection status, but found error..\n");
            goto reconnect;
        }
        while (!nopoll_conn_is_ready(g_ws_conn)) {
            if (!nopoll_conn_is_ok(g_ws_conn)) {
                printf ("ERROR: Expected to find proper client connection status, but found error..\n");
                goto reconnect;
            }

            if (i <= 0) {
                goto reconnect;
            }

            /* wait a bit 10ms */
            printf("wait for conn ready\n");
            nopoll_sleep (10000);
            i--;
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
        j--;
    }  
}

int main(int argc,char *argv[])  
{  
    int32_t sock, len, len1, len2, i = 0, retcode, flags;
    struct sockaddr_in6 addr;  
    uint32_t addr_len;
    uint8_t msg[MAX_MSG_LEN];
    uint8_t buf[MAX_MSG_LEN];
    uint8_t buf1[MAX_MSG_LEN];
    cJSON *root = NULL, *node = NULL, *node1 = NULL, *node2 = NULL;
    uint8_t *device_id = NULL;
    sensor_session *session = NULL;
    noPollMsg  *ws_msg = NULL;
    uint8_t *ws_msg_payload = NULL;
    
    /*main socket*/
    if ((sock = socket(AF_INET6,SOCK_DGRAM, 0)) < 0) {  
        perror("error:");  
        return(1);  
    } else {  
        printf("main socket:%d created\n", sock);
    }  
  
    flags = fcntl(sock, F_GETFL);
    flags |= O_NONBLOCK;
    fcntl(sock, F_SETFL, flags);

    addr_len=sizeof(struct sockaddr_in6);  
    bzero(&addr,sizeof(addr));  
    addr.sin6_family=AF_INET6;  
    addr.sin6_port=htons(MAIN_SOCKET_PORT);
    addr.sin6_addr=in6addr_any;  
  
    if (bind(sock, (struct sockaddr *)&addr, sizeof(addr)) < 0) {  
        perror("main socket connect");
        return(1);  
    } else {  
        printf("main socket bind ok. Local port:%d\n", MAIN_SOCKET_PORT);
    }

    websocket_connect();
    
    if (!crypto_init()) {
        printf("Crypto init fail\n");
        return (1);
    }

    while(1) {
        /*auth message*/
        len = recvfrom(sock, msg, sizeof(msg), 0, (struct sockaddr *)&addr, (socklen_t*)&addr_len);
	if (len > 0 && len > sizeof(security_header_t)) {
            for (i = 0; i < len; i++) {
                printf("%02x ", msg[i]);
            }
            security_header_t *security_header= (security_header_t *)msg;
            printf("version:%d, content type:%d, key_version:%d, len:%d\n", security_header->version, 
                   security_header->content_type, security_header->key_version, 
                   security_header->len);
            
            /*check version*/
            if (security_header->version != SECURITY_VERSION) {
                printf("Security version error\n");
                continue;
            }
            
            if (security_header->content_type == SECURITY_CLIENT_HELLO) {
                security_client_hello_msg_t *handshake_msg = (security_client_hello_msg_t *)msg;
                
                session = find_session_by_addr(addr);
                if (session == NULL) {
                    session = new_session();
                    if (session) {
                        printf("new session\n");
                        session->addr = addr;
                        session->auth_flag = false;
                    } else {
                        printf("new session malloc fail\n");
                        continue;
                    }
                }
                
                memcpy(session->device_id, handshake_msg->device_id, DEVICE_ID_SIZE);

                /*Decrypt*/
                if (handshake_msg->security_header.key_version == 0) {
                    if (handshake_msg->security_header.len != len - sizeof(security_header_t)) {
                        printf("handshake packet size error\n");
                        goto WS_MESSAGE_HANDLE;
                    }
                    len1 = handshake_msg->security_header.len - 4 - DEVICE_ID_SIZE;
                    sprintf(buf1, "[1,\"");//1 means encrypted, 0=plaintext
                    hex_to_string(buf1 + 4, handshake_msg->data, len1);
                    sprintf(buf1 + 4 + 2*len1, "\"]");
                    session->random = handshake_msg->random_num;
                    len1 = build_msg(buf, MAX_MSG_LEN, TYPE_REQUEST, METHOD_AUTH, handshake_msg->device_id, buf1);
                    if (!len1) {
                        printf("build message fail\n");
                        goto WS_MESSAGE_HANDLE;
                    }
                    len2 = websocket_write(buf, len1);
                    if (len2 != len1) {
                        printf("ERROR: websocket send total len:%d, send %d\n", len1, len2);
                        //send error to sensor
                        len1 = create_security_error_msg(buf1, SECURITY_ERROR_SERVER_ERROR,
                                                         handshake_msg->security_header.key_version);
                        if (len1 > 0) {
                            if(sendto(sock, buf1, len1, 0,
                                      (struct sockaddr *)&session->addr,
                                      sizeof(struct sockaddr_in6)) < 0) {
                                perror("Send security error msg fail");
                            }
                        } else {
                            printf("Create security error msg fail\n");
                        }
                    } else {
                        printf("auth send success\n");
                    }
                } else if (handshake_msg->security_header.key_version == get_current_network_shared_key_version()) {
                    //Decrypt by shared key
                    len1 = decrypt(session, handshake_msg->data, len - sizeof(security_client_hello_msg_t), buf);
                    if (len1 == 0) {
                        printf("Decrypted error\n");
                        len1 = create_security_error_msg(buf1, SECURITY_ERROR_DECRYPT_ERROR,
                                                         handshake_msg->security_header.key_version);
                        if (len1 > 0) {
                            if(sendto(sock, buf1, len1, 0,
                                      (struct sockaddr *)&session->addr,
                                      sizeof(struct sockaddr_in6)) < 0) {
                                perror("Send security error msg fail");
                            }
                        } else {
                            printf("Create security error msg fail\n");
                        }
                        goto WS_MESSAGE_HANDLE;
                    }
                    
                    if (session->auth_flag == true) {
                        if (len1 != DEVICE_PWD_SIZE || memcmp(session->pwd, buf, DEVICE_PWD_SIZE)) {
                            len1 = create_security_error_msg(buf1, SECURITY_ERROR_INVALID_PWD,
                                                             handshake_msg->security_header.key_version);
                            if (len1 > 0) {
                                if(sendto(sock, buf1, len1, 0,
                                          (struct sockaddr *)&session->addr,
                                          sizeof(struct sockaddr_in6)) < 0) {
                                    perror("Send security error msg fail");
                                }
                            } else {
                                printf("Create security error msg fail\n");
                            }
                            goto WS_MESSAGE_HANDLE;
                        } else {
                            session->random = handshake_msg->random_num;
                            
                            generate_master_key(session);
                            
                            len1 = create_security_server_hello_msg(session, buf1);
                            if (len1 > 0) {
                                if(sendto(sock, buf1, len1, 0,
                                         (struct sockaddr *)&session->addr,
                                         sizeof(struct sockaddr_in6)) < 0) {
                                    perror("Send security server hello msg fail");
                                }
                            } else {
                                printf("Create security server hello msg fail\n");
                            }
                        }
                    } else {
                        sprintf(buf1, "[0,\"");//1 means encrypted, 0=plaintext
                        hex_to_string(buf1 + 4, buf, len1);
                        sprintf(buf1 + 4 + 2*len1, "\"]");
                        session->random = handshake_msg->random_num;
                        len1 = build_msg(buf, MAX_MSG_LEN, TYPE_REQUEST, METHOD_AUTH,
                                         handshake_msg->device_id, buf1);
                        len2 = websocket_write(buf, len1);
                        if (len2 != len1) {
                            printf("ERROR: websocket send total len:%d, send %d\n", len1, len2);
                            //send error to sensor
                            len1 = create_security_error_msg(buf1, SECURITY_ERROR_SERVER_ERROR,
                                                             handshake_msg->security_header.key_version);
                            if (len1 > 0) {
                                if(sendto(sock, buf1, len1, 0,
                                          (struct sockaddr *)&session->addr,
                                          sizeof(struct sockaddr_in6)) < 0) {
                                    perror("Send security error msg fail");
                                }
                            } else {
                                printf("Create security error msg fail\n");
                            }
                        } else {
                            printf("auth send success\n");
                        }
                    }
                } else {
                    len1 = create_security_error_msg(buf1, SECURITY_ERROR_INVALID_KEY_VERSION,
                                                     handshake_msg->security_header.key_version);
                    if (len1 > 0) {
                        if(sendto(sock, buf1, len1, 0,
                                  (struct sockaddr *)&session->addr,
                                  sizeof(struct sockaddr_in6)) < 0) {
                            perror("Send security error msg fail");
                        }
                    } else {
                        printf("Create security error msg fail\n");
                    }
                }
            } else if (security_header->content_type == SECURITY_DATA) {
                session = find_session_by_addr(addr);
                if (session == NULL) {
                    printf("Session not found\n");
                    len1 = create_security_error_msg(buf1, SECURITY_ERROR_SESSION_NOT_FOUND,
                                                     security_header->key_version);
                    if (len1 > 0) {
                        if(sendto(sock, buf1, len1, 0,
                                  (struct sockaddr *)&session->addr,
                                  sizeof(struct sockaddr_in6)) < 0) {
                            perror("Send security error msg fail");
                        }
                    } else {
                        printf("Create security error msg fail\n");
                    }
                    goto WS_MESSAGE_HANDLE;
                }
                
                if (security_header->key_version == get_current_network_shared_key_version()) {
                    len1 = decrypt(session, security_header->payload, len - sizeof(security_header_t), buf);
                    if (len1 == 0) {
                        printf("Decrypted error\n");
                        len1 = create_security_error_msg(buf1, SECURITY_ERROR_DECRYPT_ERROR,
                                                         security_header->key_version);
                        if (len1 > 0) {
                            if(sendto(sock, buf1, len1, 0,
                                      (struct sockaddr *)&session->addr,
                                      sizeof(struct sockaddr_in6)) < 0) {
                                perror("Send security error msg fail");
                            }
                        } else {
                            printf("Create security error msg fail\n");
                        }
                        goto WS_MESSAGE_HANDLE;
                    }
                    printf("len:%d data:", len1);
                    for (i = 0; i < len; i++) {
                        printf("%02x ", buf[i]);
                    }
                    printf("\n");
                    printf("%s\n", buf);
                    len2 = websocket_write(buf, len1);
                    if (len2 != len1) {
                        printf("ERROR: websocket send total len:%d, send %d\n", len1, len2);
                        //send error to sensor
                        len1 = create_security_error_msg(buf1, SECURITY_ERROR_SERVER_ERROR,
                                                         security_header->key_version);
                        if (len1 > 0) {
                            if(sendto(sock, buf1, len1, 0,
                                      (struct sockaddr *)&session->addr,
                                      sizeof(struct sockaddr_in6)) < 0) {
                                perror("Send security error msg fail");
                            }
                        } else {
                            printf("Create security error msg fail\n");
                        }
                    } else {
                        printf("data send success\n");
                    }
                } else {
                    len1 = create_security_error_msg(buf1, SECURITY_ERROR_INVALID_KEY_VERSION,
                                                     security_header->key_version);
                    if (len1 > 0) {
                        if(sendto(sock, buf1, len1, 0,
                                  (struct sockaddr *)&session->addr,
                                  sizeof(struct sockaddr_in6)) < 0) {
                            perror("Send security error msg fail");
                        }
                    } else {
                        printf("Create security error msg fail\n");
                    }
                }
            }
        }

        
WS_MESSAGE_HANDLE:
        if (!nopoll_conn_is_ok(g_ws_conn)) {
            printf ("ERROR: Expected to find proper client connection status, but found error..\n");
            websocket_connect();
            if (!nopoll_conn_is_ok(g_ws_conn)) {
                continue;
            }
        }
        //get msg from ws server
        ws_msg = nopoll_conn_get_msg(g_ws_conn);
        if (ws_msg) {
            ws_msg_payload = (uint8_t *)nopoll_msg_get_payload(ws_msg);
            len = nopoll_msg_get_payload_size(ws_msg);
            printf("websocket msg len %d:\n", len);
            for (i = 0; i < len; i++) {
                printf("%02x ", ws_msg_payload[i]);
            }
            printf("\n");
            if (len >= MSG_HEAD_LEN) {
                device_id = get_msg_device_id(ws_msg_payload);
                session = find_session(device_id);
                if (session) {
                    memset(msg, 0x0, sizeof(msg));
                    memcpy(msg, ws_msg_payload, len);
                    if (get_msg_method(msg) == METHOD_AUTH) {
                        root  = cJSON_Parse(get_msg_parameters(msg));
                        if (root) {
                            node = cJSON_GetArrayItem(root, 0);
                            if (node && node->valueint == 0) {
                                node1 = cJSON_GetArrayItem(root, 1);
                                if (node1 && strlen(node1->valuestring) == DEVICE_PWD_SIZE*2) {
                                    string_to_hex(node1->valuestring, session->pwd, DEVICE_PWD_SIZE);
                                    generate_master_key(session);
                                    len1 = create_security_server_hello_msg(session, buf1);
                                    if (len1 > 0) {
                                        if(sendto(sock, buf1, len1, 0,
                                                  (struct sockaddr *)&session->addr,
                                                  sizeof(struct sockaddr_in6)) < 0) {
                                            perror("Send security server hello msg fail");
                                        } else {
                                            session->auth_flag = true;
                                        }
                                    } else {
                                        printf("create security server hello msg fail\n");
                                    }
                                }
                            } else {
                                len1 = create_security_error_msg(buf1, node->valueint, 0);
                                if (len1 > 0) {
                                    if(sendto(sock, buf1, len1, 0,
                                              (struct sockaddr *)&session->addr,
                                              sizeof(struct sockaddr_in6)) < 0) {
                                        perror("Send security error msg fail");
                                    }
                                } else {
                                    printf("Create security error msg fail\n");
                                }
                            }
                        }
                    } else {
                        if (len%16 != 0) {
                            len++;
                        }
                        len1 = encrypt(session, msg, len, buf);
                        if (len1) {
                            printf("encrypt data len:%d, data:", len1);
                            for (i = 0; i < len1; i++) {
                                printf("%02x ", buf[i]);
                            }
                            printf("\n");

                            len2 = create_security_data_msg(session, buf1, buf, len1);
                            if (len2) {
                                printf("find session, send response msg\n");
                                if(sendto(sock, buf1, len2, 0,
                                          (struct sockaddr *)&session->addr,
                                          sizeof(struct sockaddr_in6)) < 0){
                                    perror("send error");
                                }
                            } else {
                                printf("Create security data message fail\n");
                            }
                        } else {
                            printf("Encrypt ws message fail\n");
                        }
                    }
                } else {
                    //send error to server
                    msg_header_t *msg_header = (msg_header_t *)buf1;
                    memcpy(buf1, ws_msg_payload, len);
                    msg_header->msg_type = TYPE_RESPONSE;
                    sprintf(msg_header->parameters, "[%d]", RETCODE_DEVICE_CONNECT_ERROR);
                    len1 = sizeof(msg_header_t) + strlen(msg_header->parameters);
                    len2 = websocket_write(buf1, len1);
                    if (len2 != len1) {
                        printf("ERROR: websocket send error, total len:%d, send %d\n", len1, len2);
                    }
                }
            }
message_done:
            /* unref message */
            nopoll_msg_unref (ws_msg);
        }
    }
    sleep(1);
    exit(EXIT_SUCCESS);
}  
