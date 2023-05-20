#!/bin/bash

#Cree una función que tome una cadena de texto (string) como argumento 
#y muestre cada carácter en una nueva línea. (Ver ${#VAR} y ${VAR:a:b})

function trozar {
    local CADENA=$1
    local LONGITUD=${#CADENA}
    for ((i=0; i<$LONGITUD; i++))
    do
        echo ${CADENA:i:1}
    done
}

trozar $1