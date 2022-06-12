Everything = Code2 Code2.o Pole.o Objetosc.o BibPole.a BibObjetosc.a

all: $(Everything)

Pole.o: Pole.c
	gcc -c Pole.c
BibPole.a: Pole.o
	ar rs BibPole.a Pole.o
Objetosc.o: Objetosc.c
	gcc -c Objetosc.c
BibObjetosc.a: Objetosc.o
	ar rs BibObjetosc.a Objetosc.o
Code2.o: Code2.c
	gcc -c Code2.c
Code2: Code2.o BibObjetosc.a BibPole.a
	gcc -o Code2 Code2.o BibObjetosc.a BibPole.a
