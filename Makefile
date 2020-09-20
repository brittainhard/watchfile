DEBUG_FLAGS= -Wall -g
CFLAGS= 
EXE= watchfile
TEST_EXE= a.out
SOURCE= src/watchfile.c
CC= gcc
DEPS= 

all: clean watchfile

watchfile: $(DEPS)
	$(CC) $(CFLAGS) $(SOURCE) -o $(EXE) $(DEPS)

mdebug: $(DEPS)
	$(CC) $(DEBUG_FLAGS) $(SOURCE) -o $(TEST_EXE) $(DEPS)

clean:
	rm -rf watchfile a.out *.o

default: 
test: mdebug
