#!/bin/bash

#Cree una función que tome una cadena como argumento y devuelva la cadena en orden inverso.

function trozar {
    local CADENA=$1
    local REVERSA=""
    local LONGITUD=${#CADENA}
    for ((i=$LONGITUD-1; i>=0; i--))
    do
        REVERSA=$REVERSA${CADENA:i:1}
    done
    echo $REVERSA
}

trozar $1