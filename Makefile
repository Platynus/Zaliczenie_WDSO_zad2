Everything = Code2 Code2.o Pole.o Objetosc.o BibPole.a BibObjetosc.so

all: $(Everything)

.c.o:
	gcc -fPIC -c $<
.o:
	gcc -o $@ $^

Pole.o: Pole.c
Objetosc.o: Objetosc.c
BibPole.a: Pole.o
	ar rs $@ $<
BibObjetosc.so: Objetosc.o
	gcc -shared -o $@ $<
Code2.o: Code2.c
Code2: Code2.o BibObjetosc.so BibPole.a

