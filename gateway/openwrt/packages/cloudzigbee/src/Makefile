CFLAGS += -I$(STAGING_DIR)/usr/include/nopoll/ 

ODIR=.

LIBS += -lm -lnopoll

_DEPS = session.h ws-client.h cJSON.h 
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = session.o ws-client.o cJSON.o udp-server.o 
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

zigbee_agent: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~
