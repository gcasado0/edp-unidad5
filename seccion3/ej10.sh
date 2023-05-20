#!/bin/bash

#Crea un script que solicite al usuario que ingrese una letra e imprima un mensaje según si la letra es una vocal o una consonante.

read -p "Introduzca una letra: " n
VALIDAR_LETRA="^[a-zA-ZñÑ]$"
VALIDAR_VOCAL="[aeiou]"

if [[ $n =~ $VALIDAR_LETRA ]]
then
    if [[ $n =~ $VALIDAR_VOCAL ]]
    then 
        echo "La letra $n es una vocal"
    else
        echo "La letra $n es una consonante"
    fi
else
    echo "El texto \"$n\" no es una letra"
fi
