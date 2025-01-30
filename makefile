# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall

# Source files
SRCS = sumpro.c

# Object files
OBJS = $(SRCS:.c=.o)

# Executable name
EXEC = sumpro 

# Default target
all: $(EXEC)

# Link objects to executable
$(EXEC): $(OBJS)
	$(CC) -o $@ $^

# Source to object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up build artifacts
clean:
	rm -f $(OBJS) $(EXEC)

# Run the program
run: $(EXEC)
	./$(EXEC)

# Debugging target
debug: CFLAGS += -g
debug: clean all
	./$(EXEC)

build: CFLAGS += -O2
build: clean all

.PHONY: all clean run debug

