CC=gcc

CFLAGS=-c -Wall -Wextra -Wpedantic -std=c2x

INCLUDE=-I./include

all: demo

demo: main.o libdemo.o
	$(CC) ./bin/main.o ./bin/libdemo.o -o demo

main.o: main.c
	$(CC) $(CFLAGS) main.c $(INCLUDE) -o ./bin/main.o

libdemo.o: ./src/libdemo.c
	$(CC) $(CFLAGS) ./src/libdemo.c $(INCLUDE) -o ./bin/libdemo.o

clean:
	rm -rf ./bin/*.o demo ./doc/*.*