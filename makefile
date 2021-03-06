EXEC := type-for-me
INSTALL_DIR := /usr/local/bin

CC := gcc
CFLAGS := -O3 -Wall -Wextra -Wpedantic
LIBS := -lncurses

SRCS := src/main.c

all:
	$(CC) -o $(EXEC) $(CFLAGS) $(SRCS) $(LIBS)

.PHONY: remove
remove:
	rm -fv $(EXEC)

.PHONY: install
install:
	cp -v $(EXEC) $(INSTALL_DIR)/$(EXEC)

.PHONY: uninstall
uninstall:
	rm -fv $(INSTALL_DIR)/$(EXEC)
