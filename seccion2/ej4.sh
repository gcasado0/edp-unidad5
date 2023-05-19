#!/bin/bash

#Hacer un script que reciba el nombre de un archivo e
# imprima en pantalla si este tiene permisos de lectura, escritura o ejecución.

ARCHIVO=$1

if [ $# -lt 1 ]
then
    echo "Debe ingresar un parámetro"
else
    if [ -e $ARCHIVO ]
    then
        ls -l $ARCHIVO
        if [ -r $ARCHIVO ]; then echo "Tiene permiso de lectura"; fi
        if [ -w $ARCHIVO ]; then echo "Tiene permiso de escritura"; fi
        if [ -x $ARCHIVO ]; then echo "Tiene permiso de ejecución"; fi

    else
        echo "El archivo no existe"
    fi
fi
