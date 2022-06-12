Everything = Code2 Code2.o Pole.o Objetosc.o BibPole.a BibObjetosc.a

all: $(Everything)

Pole.o: Pole.c
	gcc -c $<
BibPole.a: Pole.o
	ar rs $@ $<
Objetosc.o: Objetosc.c
	gcc -c $<
BibObjetosc.a: Objetosc.o
	ar rs $@ $<
Code2.o: Code2.c
	gcc -c $<
Code2: Code2.o BibObjetosc.a BibPole.a
	gcc -o $@ $^

