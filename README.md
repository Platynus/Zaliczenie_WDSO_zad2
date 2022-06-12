# Zaliczenie_WDSO_zad2

## Table of contents

- [General info](#general-info)
- [Technologies](#technologies)
- [Setup](#setup)
- [Consist](#consist)

## General info

Projekt stworzony przez Patryka Pawelca z grupy 5/10

## Technologies

Program stworzony z urzyciem:

- Cały program został napisany w jezyku c i makefile
- Podczas tworzenia towarzyszyły materiały z zajęć

## Setup

Uruchomienie Programu:

```
$ "cd/(sciezka)" Przejscie do katalogu z plikami
$ "make" Utworzenie całego pliku
$ "./Code2" Uruchomienie pliku

$ Kiedy wyświetli się taki komunikat:
$ ./Code2: error while loading shared libraries: BibObjetosc.so: cannot open   shared object file: No such file or directory
$ Należy użyć export LD_LIBRARY_PATH=$(pwd)
```

### Consist

Program składa się z:

- 2 Plików nagłówkowych Pole.h i Objetosc.h
- 3 Pliki źródłowe Pole.c Objetosc.c Code2.c
