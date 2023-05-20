#!/bin/bash

#Cree una función que tome un número entero como argumento y verifique si es par o impar.

function paridad {
    
    local VALIDAR="^(-)?[0-9]+$"
    
    if [[ -z $1 ]]; then echo "Parametro 1: NULL"; exit 1; fi;
    if [[ ! $1 =~ $VALIDAR ]]; then echo "Parametro 1: no es un número"; exit 2; fi;

    if [[ $(($1%2)) == 0 ]]
    then    
        echo "$1: Es par"
    else    
        echo "$1: Es impar"
    fi

}

paridad $1