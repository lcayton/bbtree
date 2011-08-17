all:
	gcc -c search.c -o search.o
	gcc -c utils.c -o utils.o
	gcc -c bregdiv.c -o bregdiv.o
	gcc -c bbtree.c -o bbtree.o
	gcc -O2 -lm test.c bbtree.o bregdiv.o utils.o search.o -o testing 
clean:
	rm -rf *.o
	rm -rf testing
