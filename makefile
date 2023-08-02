# st - simple terminal
# See LICENSE file for copyright and license details.
.POSIX:

include config.mk

BIN = ./bin
OUT = ./st

SRC  = $(wildcard src/*.c)
DEPS = $(wildcard src/*.h)
OBJ  = $(addsuffix .o,$(subst src/,$(BIN)/,$(basename $(SRC))))

all: options $(OUT)

options:
	@echo st build options:
	@echo "CFLAGS  = $(STCFLAGS)"
	@echo "LDFLAGS = $(STLDFLAGS)"
	@echo "CC      = $(CC)"

$(OUT): $(BIN) $(OBJ) $(SRC)
	$(CC) $(STCFLAGS) -o $(OUT) $(OBJ) $(STLDFLAGS)

$(BIN)/%.o: src/%.c $(DEPS)
	$(CC) -c $< $(STCFLAGS) -o $@

$(BIN):
	mkdir -p $(BIN)

clean:
	rm -f $(OUT) $(BIN)/* st-$(VERSION).tar.gz

install: st
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f st $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/st
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	sed "s/VERSION/$(VERSION)/g" < st.1 > $(DESTDIR)$(MANPREFIX)/man1/st.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/st.1
	tic -sx st.info
	@echo Please see the README file regarding the terminfo entry of st.

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/st
	rm -f $(DESTDIR)$(MANPREFIX)/man1/st.1

.PHONY: all options clean dist install uninstall