#!/bin/bash

#E.4) Construya un script que reciba una cadena, el script debe validar si la cadena
#ingresada es una dirección IP válida.
#Ejemplo de dirección IP válida: 192.168.0.1 (son cuatro enteros entre 0 y 255 separados por punto)

ES_IP="^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$"
VALIDA=1
if [[ $1 =~ $ES_IP ]] 
then 
    #descomponer en 4 partes y verificar que sean menor a 255
    for ((i=1; i<=4; i++))
    do
        #STR="BEGIN { FS = \".\"} { print \$$i }"
        #N=$(echo $1 | awk "$STR")
        N=$(echo $1 | cut -d. -f$i)
        if [ ! $N -le 255 ]
        then
            VALIDA=0
            break
        fi
    done
else
    VALIDA=0
fi

if [ $VALIDA -eq 1 ]
then
    echo "$1: Es una IP valida" 
else
     echo "$1: No es una IP"
fi