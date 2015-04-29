/*
 *  Created by Jun Fang on 14-8-24.
 *  Copyright (c) 2014年 Jun Fang. All rights reserved.
 */
#include "contiki.h"
#include "lib/random.h"
#include "sys/ctimer.h"
#include "net/uip.h"
#include "net/uip-ds6.h"
#include "net/uip-udp-packet.h"
#include "sys/ctimer.h"
#include <stdio.h>
#include <string.h>
#include "dev/adc-sensor.h"
#include "cJSON.h"

#define UDP_CLIENT_PORT 8765
#define UDP_SERVER_PORT 5678

#define UDP_EXAMPLE_ID  190

#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"

#include "jsonparse.h"

#ifndef PERIOD
#define PERIOD 60
//#define PERIOD 20
#endif

#define START_INTERVAL		(15 * CLOCK_SECOND)
#define SEND_INTERVAL		(PERIOD * CLOCK_SECOND)
#define SEND_TIME		(random_rand() % (SEND_INTERVAL))

#define MAX_PAYLOAD_LEN		80

static char buf[MAX_PAYLOAD_LEN];

static struct uip_udp_conn *client_conn;
static uip_ipaddr_t server_ipaddr;
static uint16_t transaction_id;
static uint32_t device_class = 0x12345678;
static uint8_t device_id[8] = {0x00, 0x00, 0x00, 0x00, 0x0d, 0xaf, 0x07, 0x65};
static struct jsonparse_state js_state;
static int period = PERIOD;

/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");
AUTOSTART_PROCESSES(&udp_client_process);
/*---------------------------------------------------------------------------*/
static void send_config_response(uint16_t seq, int retcode)
{
  memset(buf, 0x0, MAX_PAYLOAD_LEN);
  buf[0] = 0x40;
  buf[1] = 2;
  *((uint16_t *) &buf[2]) = seq;
  *((uint32_t *) &buf[4]) = UIP_HTONL(device_class);
  memcpy(&buf[8], device_id, 8);
  *((uint8_t *) &buf[16]) = 0;
  sprintf(&buf[17], "{\"retcode\":%d}", retcode);
  PRINTF("send to %x:%x response msg, len:%d\n", 
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 2],
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1],
         strlen(&buf[17]) + 17);
  uip_udp_packet_sendto(client_conn, buf, strlen(&buf[17]) + 17,
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
/*---------------------------------------------------------------------------*/
static void
tcpip_handler(void)
{
  unsigned char *data;
  int len = 0, type, i = 0;

  if(uip_newdata()) {
    len = uip_datalen();
    data = uip_appdata;
    PRINTF("Recv len:%d, data:", len);
    for (i = 0; i < len; i++) {
      PRINTF("%x ", data[i]);
    }
    PRINTF("\n");
    if (len > 16) {
        seq = *(uint16_t *)(data + 2);
        if (uip_ntohl(*(uint32_t *)(data + 4)) == device_class && 
            memcmp(&data[8], device_id, 8) == 0) {
            if (data[1] == 0) {
                //request
                if (data[16] == 3) {
                    //config request
                    jsonparse_setup(&js_state, data + 17, len - 17); 
                    while((type = jsonparse_next(&js_state)) != 0) {
                      if(type == JSON_TYPE_PAIR_NAME) {
                        if(jsonparse_strcmp_value(&js_state, "period") == 0) {
                          jsonparse_next(&js_state);
                          jsonparse_next(&js_state);
                          period = jsonparse_get_value_as_int(&js_state);
                          if (period == 0 ) {
                              period = PERIOD; 
                          }
                          //send response
                          send_config_response(seq, 0);
                        }
                      }
                    }
                }
            } else {
                //TODO: response
            } 
        } else {
            PRINTF("It is not for me\n");
        }
    }
  }
}
#if 1
/*---------------------------------------------------------------------------*/
static void
send_register()
{
  memset(buf, 0x0, MAX_PAYLOAD_LEN);
  buf[0] = 0x40;
  buf[1] = 0;
  *((uint16_t *) &buf[2]) = UIP_HTONS(transaction_id);
  *((uint32_t *) &buf[4]) = UIP_HTONL(device_class);
  memcpy(&buf[8], device_id, 8);
  buf[16] = 0;
  sprintf(&buf[17], "{\"config\":{\"period\":%d}}", period);
  PRINTF("send to %x:%x register msg, len:%d\n", 
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 2],
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1],
         strlen(&buf[17]) + 17);
  uip_udp_packet_sendto(client_conn, buf, strlen(&buf[17]) + 17,
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
  transaction_id++;

}
/*---------------------------------------------------------------------------*/
static void
send_stats()
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
    return;
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
    return;
  }
  sane = 25 + ((rv - 1480) / 4.5);
  dec = sane;
  frac = sane - dec;
  PRINTF("  Temp=%d.%02u C (%d)\n", dec, (unsigned int)(frac*100), rv);
  
  memset(buf, 0x0, MAX_PAYLOAD_LEN);
  buf[0] = 0x40;
  buf[1] = 0;
  *((uint16_t *) &buf[2]) = UIP_HTONS(transaction_id);
  *((uint32_t *) &buf[4]) = UIP_HTONL(device_class);
  memcpy(&buf[8], device_id, 8);
  buf[16] = 1;
  sprintf(&buf[17], "{\"temperature\":%d.%02u}", dec, (unsigned int)(frac*100));
  PRINTF("send to %x:%x stats msg, len:%d\n", 
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 2],
         server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1],
         strlen(&buf[17]) + 17);
  uip_udp_packet_sendto(client_conn, buf, strlen(&buf[17]) + 17,
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
  transaction_id++;
}
#endif
#if 0
/*---------------------------------------------------------------------------*/
static void
send_test()
{
  int i = 0;

  for(i = 0; i< MAX_PAYLOAD_LEN-1 ; i++) {
    buf[i] = 'A';
  }
  buf[i] = '\0';

  PRINTF("send test data\n");
  uip_udp_packet_sendto(client_conn, buf, strlen(buf),
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
#endif
/*---------------------------------------------------------------------------*/
static void
print_local_addresses(void)
{
  int i;
  uint8_t state;

  PRINTF("Client IPv6 addresses: ");
  for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
    state = uip_ds6_if.addr_list[i].state;
    if(uip_ds6_if.addr_list[i].isused &&
       (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
      PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
      PRINTF("\n");
      /* hack to make address "final" */
      if (state == ADDR_TENTATIVE) {
	uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
      }
    }
  }
}
/*---------------------------------------------------------------------------*/
static void
set_global_address(void)
{
  uip_ipaddr_t ipaddr;

  uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);

/* The choice of server address determines its 6LoPAN header compression.
 * (Our address will be compressed Mode 3 since it is derived from our link-local address)
 * Obviously the choice made here must also be selected in udp-server.c.
 *
 * For correct Wireshark decoding using a sniffer, add the /64 prefix to the 6LowPAN protocol preferences,
 * e.g. set Context 0 to aaaa::.  At present Wireshark copies Context/128 and then overwrites it.
 * (Setting Context 0 to aaaa::1111:2222:3333:4444 will report a 16 bit compressed address of aaaa::1111:22ff:fe33:xxxx)
 *
 * Note the IPCMV6 checksum verification depends on the correct uncompressed addresses.
 */
 
#if 1
/* Mode 1 - 64 bits inline */
   uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 1);
#elif 0
/* Mode 2 - 16 bits inline */
  uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0x00ff, 0xfe00, 1);
#else
/* Mode 3 - derived from server link-local (MAC) address */
  uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0x0250, 0xc2ff, 0xfea8, 0xcd1a); //redbee-econotag
#endif
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(udp_client_process, ev, data)
{
  static struct etimer periodic;

  PROCESS_BEGIN();

  PROCESS_PAUSE();

  set_global_address();
  
  PRINTF("UDP client process started\n");

  print_local_addresses();

  /* new connection with remote host */
  client_conn = udp_new(NULL, UIP_HTONS(UDP_SERVER_PORT), NULL); 
  if(client_conn == NULL) {
    PRINTF("No UDP connection available, exiting the process!\n");
    PROCESS_EXIT();
  }
  udp_bind(client_conn, UIP_HTONS(UDP_CLIENT_PORT)); 

  PRINTF("Created a connection with the server ");
  PRINT6ADDR(&client_conn->ripaddr);
  PRINTF(" local/remote port %u/%u\n",
	UIP_HTONS(client_conn->lport), UIP_HTONS(client_conn->rport));

  etimer_set(&periodic, (period * CLOCK_SECOND));
  while(1) {
    PROCESS_YIELD();
    if(ev == tcpip_event) {
      tcpip_handler();
    }
    
    if(etimer_expired(&periodic)) {
      etimer_set(&periodic, (period * CLOCK_SECOND));
      //ctimer_set(&backoff_timer, SEND_TIME, send_packet, NULL);
      send_register();
      send_stats();
      //send_test();
    }
  }

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
