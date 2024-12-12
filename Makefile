# Compiler to use
CC = gcc

# Compiler flags: 
# -g for debugging information
# -Wall to enable all warnings
# -O0 to disable optimization
# -std=gnu99 to use the GNU99 standard
CFLAGS = -g -Wall -O0 -std=gnu99

# Assembler flags: 
# -m32 to generate 32-bit code
# -S to compile to assembly code
ASFLAG = -m32 -S

# Source files
SOURCES = main.c getTotal.c 

# Header files
HEADERS = header.h

# Object files (derived from source files)
OBJECTS = $(SOURCES:.c=.o)

# Target executable
TARGET = program

# Default target: build the program and run it
all: $(TARGET) run

# Link object files to create the executable
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $^ -o $@

# Rule to generate object files from source files
%.o: %.c $(HEADERS)

# Rule to generate assembly files from source files
%.s: %.c $(HEADERS)
	$(CC) $(ASFLAG) $<

# Phony target to clean up generated files
.PHONY: clean

# Clean up generated files
clean:
	rm -f $(TARGET) $(OBJECTS) *.s core

# Run the program
run: $(TARGET)
	./$(TARGET)

# Rebuild the program
rebuild: clean all

# Print the value of a make variable
print-%:
	@echo $* = $($*)