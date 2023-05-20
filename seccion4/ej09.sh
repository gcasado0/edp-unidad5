#!/bin/bash

#Crear un script que dibuje un triangulo con asteriscos y tenga de base 4 asteriscos

LADO=5

for ((i=1; i<=$LADO; i++)) #FILA
do
    for ((k=0; k<$(($LADO-$i)); k++)) #DESPLAZAMIENTO
    do  
        echo -n "."
    done
    for ((j=0; j<$i; j++)) #COLUMNA
    do
        echo -n "* "
    done
    echo ""
done
    
