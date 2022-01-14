CC = gcc
CFLAGS = -Wall -O2
LDFLAGS = -lnfc

SRCDIR = src
OBJDIR = obj

SOURCES  := $(wildcard $(SRCDIR)/*.c)
INCLUDES := $(wildcard $(SRCDIR)/*.h)
OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

_dummy := $(shell mkdir -p obj)

all: nfc-mflock

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

nfc-mflock: $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) $(LDFLAGS) -o $@

