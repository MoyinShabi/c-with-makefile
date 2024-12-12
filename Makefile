CC = gcc
CFLAGS = -g -Wall -O0 -std=gnu99
ASFLAG = -m32 -S

SOURCES = main.c getTotal.c 
HEADERS = header.h
OBJECTS = $(SOURCES:.c=.o)
TARGET = program

all: $(TARGET) run

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c $(HEADERS)

%.s: %.c $(HEADERS)
	$(CC) $(ASFLAG) $<

.PHONY: clean

clean:
	rm -f $(TARGET) $(OBJECTS) *.s core

run: $(TARGET)
	./$(TARGET)

print-%:
	@echo $* = $($*)