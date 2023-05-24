#!/bin/bash

#Crear un script que dibuje un triangulo con asteriscos y tenga de base 4 asteriscos

LADO=4

for ((i=1; i<=$LADO; i++))
do
    
    for ((j=0; j<$i; j++)) 
    do
        echo -n "* "
    done
    echo ""
done
    
