#!/bin/bash

#E.3) Crear un script donde se ingrese una serie de números enteros y se devuelva la suma
#de los mismos, se permitirá el ingreso de un máximo de 10 números y solo se deben sumar
#los argumentos válidos (los que representen un número).
#Tips: utilizar shift y esta expresión regular
#ES_NUMERO='^-?[0-9]+$'

[ $# -eq 0 ] && echo "Ingresar hasta 10 numeros" && exit 1
#[ ! $# -le 10 ] && echo "Ingresar hasta 10 numeros" && exit 1

ES_NUMERO='^-?[0-9]+$'
SUMA=0
CONTADOR=0
N=$1

while [ $CONTADOR -lt 10 ]
do
    if [[ $N =~ $ES_NUMERO ]]
    then
        echo $N
        SUMA=$(($SUMA+$N))
        CONTADOR=$(($CONTADOR+1))
    fi
    shift
    N=$1
done 

echo "Total=$SUMA"
