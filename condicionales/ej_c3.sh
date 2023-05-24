#!/bin/bash

#C.3) Crear un script que reciba dos rutas a archivos de texto y que indique si estos archivos
#tienen la misma cantidad de líneas. Validar que los archivos existen y se pueden leer.

ARCHIVO1=$1
ARCHIVO2=$2

function validar {
    local ARCHIVO=$1
    if [ -e $ARCHIVO ]
    then    
        if [ -r $ARCHIVO ]
        then
            return 0
        else
            echo El archivo no se puede leer
            return 1
        fi 
    else
        echo El archivo no existe
        return 2
    fi
}

validar $ARCHIVO1
resultado1=$(echo $?)

validar $ARCHIVO2
resultado2=$(echo $?)

if [[ $resultado1 -eq 0 && $resultado2 -eq 0 ]]
then
    ARCH1_LONG=$(cat $ARCHIVO1 | wc -l )
    ARCH2_LONG=$(cat $ARCHIVO2 | wc -l )
    if [ $ARCH1_LONG -eq $ARCH2_LONG ]
    then
        echo "Los archivos son iguales"
    else
        echo "Los archivos son diferentes"
    fi
fi



