#!/usr/bin/bash

# Autor: Emilia Augustyn
# Nr indeksu: 241248

# Zadanie 25: 
# Napisz skrypt, który wyświetli nazwy wszystkich dowiązań symbolicznych z danego
# katalogu (parametr wywołania skryptu), które wskazują na określone miejsce
# w systemie plików (parametr wywołania skryptu).

# $1 katalog
# $2 plik

# Walidacja
! [ -d $1 ] && echo "Podano niewłaściwy katalog!" && return 1
! [ -f $2 ] && echo "Podano niewłaściwy plik docelowy!" && return 2 


for file in $(ls -A $1); do
    #jeśli plik jest dowiazaniem i wskazuje na okreslone miejsce w systemie plikow
    if [ -h $1/$file ] && [[ $(readlink -e $1/$file) = $(realpath $2) ]]; then
        echo $1/$file
    fi
done

