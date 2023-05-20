#!/bin/bash

#Cree una función que tome un nombre de archivo como argumento y cuente el número de líneas en el archivo.

function lineas {

    local ARCHIVO=$1
    [ -z $ARCHIVO ] && echo "Falta parametro" && exit 1
    [ ! -e $ARCHIVO ] && echo "Archivo no existe" && exit 2
    [ ! -f $ARCHIVO ] && echo "No es un archivo regular" && exit 3

    local LINEAS=$(cat $ARCHIVO | wc -l)
    echo $LINEAS
}

lineas $1
