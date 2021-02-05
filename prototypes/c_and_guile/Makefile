
PROJECT=c_and_guile

CC=gcc
CXX=g++

GUILE_FLAGS=`pkg-config --cflags guile-3.0`
GUILE_LIBS=`pkg-config --libs guile-3.0`

CFLAGS=-Wall -g 


OBJ=main.o


%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) $(GUILE_FLAGS)

all: $(OBJ)
	$(CC) -o $(PROJECT) $^ $(CFLAGS) $(GUILE_LIBS)

.PHONY: clean

clean:
	rm -f *.o $(PROJECT)
