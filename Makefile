Everything = Code2 Code2.o Pole.o Objetosc.o BibPole.a BibObjetosc.so

.PHONY:destroy


all: $(Everything)
%e.o: 
	gcc -c $<
%2.o: 
	gcc -c $<
%e.a: 
	ar rs $@ $<
%c.so: 
	gcc -shared -o $@ $<
%2:
	gcc -o $@ $^
Pole.o: Pole.c
Objetosc.o: Objetosc.c
BibPole.a: Pole.o
BibObjetosc.so: Objetosc.o
Code2.o: Code2.c
Code2: Code2.o BibObjetosc.so BibPole.a

destroy:
	rm -f Code2 *.so *.a *.o
