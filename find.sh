#!/bin/bash

# Napisz skrypt, który w zadanym miejscu w systemie plików 
# (parametr wywołania skryptu), o ile ono istnieje i jest katalogiem, 
# wyszuka i zgłosi wszystkie puste podkatalogi, które nie były modyfikowane 
# od ponad miesiąca.


if [ ! -d "$1" ]; then
    echo "Wybrano zły katalog"
    exit 1
fi

find "$1" -type d -mtime +30 -empty -print

# Wysyłaj i idę na odpoczywanko
# idz jeszcze chwile poczekam zeby nie bylo podejrzane XD 
# dziekuje za wspolprace 