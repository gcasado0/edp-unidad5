#!/bin/bash

#Cree una función que tome dos argumentos y muestre su suma.

function sumar {


    local VALIDAR="^[0-9]+$"
    if [[ -z $1 ]]; then echo "Parametro 1: NULL"; exit 1; fi;
    if [[ -z $2 ]]; then echo "Parametro 2: NULL"; exit 1; fi;

    if [[ ! $1 =~ $VALIDAR ]]; then echo "Parametro 1: no es un número"; exit 2; fi;

    if [[ ! $2 =~ $VALIDAR ]]; then echo "Parametro 2: no es un número"; exit 2; fi;

    SUMA=$(($1+$2))
    echo $SUMA

}

sumar 2 3