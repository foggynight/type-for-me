EXEC := type-for-me
INSTALL_DIR := /usr/local/bin

CC := gcc
CFLAGS := -O3 -Wall -Wextra -Wpedantic -I./src
LIBS := -lncurses

SRCS := $(wildcard src/*.c)

all:
	$(CC) -o $(EXEC) $(CFLAGS) $(SRCS) $(LIBS)

.PHONY: remove
remove:
	rm -fv $(EXEC)

.PHONY: install
install:
	cp $(EXEC) $(INSTALL_DIR)/$(EXEC)

.PHONY: uninstall
uninstall:
	rm $(INSTALL_DIR)/$(EXEC)
