#!/bin/bash

#I.6) Crear un script que reciba como argumento un directorio, deberá validarse que exista y
#se tenga permisos para leerlo.
#Luego debe mostrar las siguientes estadísticas acerca de su contenido:
#cantidad de archivos regulares
#cantidad de directorios
#cantidad de líneas de los archivos de texto

#1 argumento
[ ! $# -eq 1 ] && echo "Debe ingresar un argumento" && exit 1
DIR=$1

[ ! -e $DIR ] && echo "El directorio no existe" && exit 2 
[ ! -d $DIR ] && echo "Debe ingresar un directorio" && exit 3
[ ! -r $DIR ] && echo "No puedo leer el directorio" && exit 4

CANTIDAD_REGULARES=0
CANTIDAD_DIRECTORIOS=0
TOTAL_LINEAS=0

for FILE in $DIR/*
do
    if [ -d $FILE ]
    then    
        CANTIDAD_DIRECTORIOS=$(($CANTIDAD_DIRECTORIOS+1))
    else
        if [ -f $FILE ]
        then
            CANTIDAD_REGULARES=$(($CANTIDAD_REGULARES+1))
            LINEAS=$(cat $FILE | wc -l)
            TOTAL_LINEAS=$(($TOTAL_LINEAS+$LINEAS))
        fi
    fi
done

echo "Cantidad de archivos regulares: $CANTIDAD_REGULARES" 
echo "Cantidad de directorios: $CANTIDAD_DIRECTORIOS"
echo "Cantidad de líneas de los archivos de texto: $TOTAL_LINEAS"


