all: main 
CONTIKI=../

HAVE_BANKING=1
UIP_CONF_IPV6=1
UIP_CONF_RPL=1

PROJECT_SOURCEFILES += device_api.c device.c object.c resource.c subscriber.c message.c cJSON.c policy.c publisher.c

include $(CONTIKI)/Makefile.include

CUSTOM_RULE_LINK=1 
%.$(TARGET): %.co $(PROJECT_OBJECTFILES) $(PROJECT_LIBRARIES) contiki-$(TARGET).a $(LD) $(LDFLAGS) $(TARGET_STARTFILES) ${filter-out %.a,$^} ${filter %.a,$^} $(TARGET_LIBFILES) -o $@ -lm
