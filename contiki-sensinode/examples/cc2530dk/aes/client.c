/*
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 *
 */

#include "contiki.h"
#include "contiki-lib.h"
#include "contiki-net.h"

#include <string.h>
#include "dev/leds.h"
#include "dev/button-sensor.h"
#include "debug.h"

#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"

#define SEND_INTERVAL		2 * CLOCK_SECOND
#define MAX_PAYLOAD_LEN		48

static char buf[MAX_PAYLOAD_LEN];

static uint8_t key[] = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,\
    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f};
static uint8_t iv[] = {0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,\
    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f};

/* Our destinations and udp conns. One link-local and one global */
#if UIP_CONF_ROUTER
#define GLOBAL_CONN_PORT 3002
static struct uip_udp_conn *g_conn;
#endif

/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");
AUTOSTART_PROCESSES(&udp_client_process);

/*---------------------------------------------------------------------------*/
static void
timeout_handler(void)
{
    static uint8_t count;
    uint32_t len = 0;
    
    PRINTF("Client to: ");
    PRINT6ADDR(&g_conn->ripaddr);
    
    sprintf(buf, "Hello %d", count++);
    
    AES_SET_CMD(CC2530_ENCCS_MODE_CBC);
    cc2530_aes_set_key(key, 16);
    cc2530_aes_set_iv(iv, 16);
    len = cc2530_aes_encrypt(buf, strlen(buf), buf);
    
    PRINTF(" Remote Port %u,", UIP_HTONS(this_conn->rport));
    
    uip_udp_packet_send(g_conn, buf, len);
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(udp_client_process, ev, data)
{
    static struct etimer et;
    uip_ipaddr_t ipaddr;
    
    PROCESS_BEGIN();
    PRINTF("UDP client process started\n");
    
    uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0x0215, 0x2000, 0x0002, 0x2145);
    g_conn = udp_new(&ipaddr, UIP_HTONS(3000), NULL);
    if(!g_conn) {
        PRINTF("udp_new g_conn error.\n");
    }
    udp_bind(g_conn, UIP_HTONS(GLOBAL_CONN_PORT));
    
    PRINTF("Global connection with ");
    PRINT6ADDR(&g_conn->ripaddr);
    PRINTF(" local/remote port %u/%u\n",
           UIP_HTONS(g_conn->lport), UIP_HTONS(g_conn->rport));
    
    etimer_set(&et, SEND_INTERVAL);
    
    while(1) {
        PROCESS_YIELD();
        if(etimer_expired(&et)) {
            timeout_handler();
            etimer_restart(&et);
        }
    }
    
    PROCESS_END();
}
/*---------------------------------------------------------------------------*/
