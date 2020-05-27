#!/usr/bin/bash

# Napisz skrypt, który będzie pełnił funkcję bardzo prostego analizatora składni plików csv. 
# Załóżmy optymistycznie, że każdy poprawny plik csv składa się z nagłówka w pierwszej linii, 
# zawierającego spis pól w pliku (na przykład: #id,imię,nazwisko – zgłoś (wypisz) linie, 
# które nie zawierają odpowiedniej liczby pól. [poproszę o jedno, zmyślne wykonanie komendy awk] 


awk -F',' '{
    
    if(NR==1) {
        number_of_fields=NF;
    }
    
    else if(NF!=number_of_fields) {
        print $0; 
    }
}' test.csv