#include <stdio.h>
#include "Pole.h"
#include "Objetosc.h"

int main(){
    int funkcja;
    double bok;
    double wartosc;
    char *komunikat;
    while(1){
        printf("Prosze podac bok: \n");
        scanf("%lf",&bok);
        printf("Jakie zadanie chcesz wykonac: \n 1. Obliczanie Pola \n 2. Obliczanie Obwodu \n");
        scanf("%d",&funkcja);
        if(funkcja == 1 || funkcja == 2){
            switch(funkcja){
                case 1:
                    komunikat = "Wybrales Obliczanie Pola";
                    wartosc = obliczaniePolaKwadratu(bok);
                    break;
                case 2:
                    komunikat = "Wybrales Obliczanie Obwodu";
                    wartosc = obliczanieObjSzescianu(bok);
                    break;
    }
            puts(komunikat);
            printf("%lf",wartosc);
            break;
        }else{
            printf("Bledna wartosc");
        }
    }
}