# Define variables for later use
CC = gcc                   # The compiler to use
CFLAGS = -Wall -g         # Compiler flags (e.g., show all warnings, add debug info)
LDFLAGS = mpc.c -ledit

# Define the source and object files
SRC = shrumba.c       # Replace 'main.c' with your actual C file name
OBJ = $(SRC:.c=.o)          # Object file derived from the source file

# The default target (when you just run `make`)
all: shrumba

# Rule to create the final executable
my_program: $(OBJ)
	$(CC) $(OBJ) -o shrumba $(LDFLAGS)

# Rule to compile the source file into an object file
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target to remove generated files
clean:
	rm -f shrumba $(OBJ)

