#!/bin/bash

#C.3) Crear un script que reciba dos rutas a archivos de texto y que indique si estos archivos
#tienen la misma cantidad de líneas. Validar que los archivos existen y se pueden leer.


function validar {
    local ARCHIVO=$1
    if [ -e $ARCHIVO ]
    then    
        if [ -r $ARCHIVO ]
        then
            return 0
        else
            echo El archivo: $ARCHIVO  no se puede leer
            return 1
        fi 
    else
        echo El archivo: $ARCHIVO no existe
        return 2
    fi
}

if [ $# -eq 2 ]
then

    ARCHIVO1=$1
    ARCHIVO2=$2

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
            echo "Los archivos tienen la misma cantidad de lineas: $ARCH1_LONG"
        else
            echo "Los archivos difieren en $(($ARCH1_LONG-$ARCH2_LONG)) lineas"
        fi
    fi
else
    echo "Ingresar los 2 archivos a comparar"
    exit 1
fi



