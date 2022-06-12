SHELL=/bin/bash
DIRS = bin include lib src

.PHONY:destroy
.PRECIOUS: %.o

vpath %.c src
vpath %.h include
vpath %.so lib
vpath %.a lib

all: Code2 move


%.o: 
	gcc -c $< -L./lib -I./include
%.a: 
	ar rs $@ $<
%.so: 
	gcc -shared -o $@ $<
%:
	gcc -o $@ $^ -L./lib -I./bin
Pole.o: Pole.c
Objetosc.o: Objetosc.c
BibPole.a: Pole.o
BibObjetosc.so: Objetosc.o

Code2.o: Code2.c
Code2: Code2.o BibObjetosc.so BibPole.a

move:
	mv BibObjetosc.so ./lib
	mv BibPole.a ./lib
	mv Code2 ./bin
destroy:
	rm -f ./bin/Code2 ./lib/*.so ./lib/*.a *.o
