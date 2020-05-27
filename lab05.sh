#!/usr/bin/bash

# Napisz skrypt, który przeszuka zadane miejsce w systemie plików (parametr wywołania skryptu), 
# a następnie wyświetli ścieżki do wszystkich plików z tego miejsca (uwzględniając wszystkie
# możliwe podkatalogi) w formacie typowym dla systemów z rodziny DOS i Windows – to znaczy 
# ze znakiem \ zamiast / oraz dowolnie wybranym oznaczeniem partycji (może być po prostu C:).


[ ! -d "$1" ] && echo "Wybrano zły katalog" && exit 1

# Pliki ze znakiem '/' są w linuxie zakazane, natomiast możliwe jest
# stworzenie pliku, którego nazwa zawiera '\'. Nie są one jednak
# dozwolone w DOSowskich systemach, nie uwzględniam takiego przypadku

find $(realpath "$1") -type f -print | awk '{ gsub("/","\\",$1); print "C:"$1 }'

 


