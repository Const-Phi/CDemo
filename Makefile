CC=gcc

CFLAGS=-c -Wall -Wextra -Wpedantic -std=c2x

INCLUDE=-I./include

demo: main.o lib
	$(CC) ./bin/main.o ./bin/libdemo.o -o ./bin/demo

main.o: main.c
	$(CC) $(CFLAGS) main.c $(INCLUDE) -o ./bin/main.o

lib: ./src/libdemo.c
	$(CC) $(CFLAGS) ./src/libdemo.c $(INCLUDE) -o ./bin/libdemo.o

doc:
	doxygen doxyfile

# pdf: clean-doc doc	
pdf:
	cd ./doc/latex && make
	
run:
	./bin/demo

clean: clean-bin clean-doc
	

clean-bin:
	rm -rf ./bin/* !./bin/.gitkeep

clean-doc:
	rm -rf ./doc