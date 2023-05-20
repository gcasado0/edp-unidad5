#!/bin/bash

#Escribe un script que imprima todos los números pares del 1 al 30.

for ((i=1; i<=30; i++))
do
    if [[ $(($i%2)) == 0 ]]
    then
        echo $i
    fi
done
