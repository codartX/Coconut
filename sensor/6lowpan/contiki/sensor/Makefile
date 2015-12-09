all: main 
CONTIKI=../../../contiki-sensinode/

HAVE_BANKING=1
UIP_CONF_IPV6=1
UIP_CONF_RPL=1

#device-fsdata.c : ./fs/*.*
#	$(CONTIKI)/tools/makefsdata -d ./fs -o device-fsdata.c 

PROJECT_SOURCEFILES += device_api.c device.c object.c resource.c subscriber.c \
                       message.c cJSON.c crypto.c  ipso_resource.c \
                       device_profile.c device-fs.c device-fsdata.c 

#ifdef POLICY_SUPPORT
PROJECT_SOURCEFILES += policy.c
#endif

include $(CONTIKI)/Makefile.include

CUSTOM_RULE_LINK=1 
%.$(TARGET): %.co $(PROJECT_OBJECTFILES) $(PROJECT_LIBRARIES) contiki-$(TARGET).a $(LD) $(LDFLAGS) $(TARGET_STARTFILES) ${filter-out %.a,$^} ${filter %.a,$^} $(TARGET_LIBFILES) -o $@ -lm
