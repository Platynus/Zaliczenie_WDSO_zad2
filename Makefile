Everything = Code2 Code2.o Pole.o Objetosc.o BibPole.a BibObjetosc.so

all: $(Everything)

Pole.o: Pole.c
	gcc -c $<
BibPole.a: Pole.o
	ar rs $@ $<
Objetosc.o: Objetosc.c
	gcc -fPIC -c $<
BibObjetosc.so: Objetosc.o
	gcc -shared -o $@ $<
Code2.o: Code2.c
	gcc -c $<
Code2: Code2.o BibObjetosc.so BibPole.a
	gcc -o $@ $^


