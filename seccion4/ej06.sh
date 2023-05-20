#!/bin/bash

#Crear un script que dibuje un cuadrado con asteriscos y tenga de lado 4 asteriscos

LADO=4

for ((i=0; i<$LADO; i++))
do
    for ((j=0; j<$LADO; j++))
    do
        echo -n "* "
    done
    echo ""
done
    
