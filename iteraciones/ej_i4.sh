#!/bin/bash

#I.4) Crear un script que permita el ingreso de una serie de números (consideremos que la
#entrada es adecuada, que la persona que emplea el script ingresa solo números) y
#determinar cuántos de ellos son:
# pares
# positivos
# que tengan 3 cifras

[ $# -eq 0 ] && echo "Debe ingresar numeros como argumentos" && exit 1

CANTIDAD_TOTAL=$#
CANTIDAD_PARES=0
CANTIDAD_POSITIVOS=0
CANTIDAD_3CIFRAS=0

for NUMERO in $@
do 
    echo $NUMERO
    if [ ${#NUMERO} -eq 3 ]
    then
        CANTIDAD_3CIFRAS=$(($CANTIDAD_3CIFRAS+1))
    fi
    
    if [ $(($NUMERO%2)) -eq 0 ]
    then 
        CANTIDAD_PARES=$(($CANTIDAD_PARES+1))
    fi

    if [ $NUMERO -gt 0 ]
    then 
        CANTIDAD_POSITIVOS=$(($CANTIDAD_POSITIVOS+1))
    fi
done

echo "Total de numeros ingresados: $CANTIDAD_TOTAL"
echo "Total de numeros pares: $CANTIDAD_PARES"
echo "Total de numeros positivos: $CANTIDAD_POSITIVOS"
echo "Total de numeros que tengan 3 cifras: $CANTIDAD_3CIFRAS"