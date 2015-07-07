CFLAGS += -I$(STAGING_DIR)/usr/include/nopoll/ 

ODIR=.

LIBS += -lm -lnopoll -lcrypto

_DEPS = session.h ws-client.h cJSON.h message.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = session.o ws-client.o cJSON.o sensor_proxy.o message.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

sensor-proxy: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~
