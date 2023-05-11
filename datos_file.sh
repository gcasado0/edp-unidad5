#!/bin/bash

# Dado un archivo regular mostrar:
#. los permisos en formato octal
#. su tamaño en KB
# Algoritmo...

VALIDO=0
#- asegurarse de recibir al menos un argumento
if [ $# -gt 0 ] 
then
    #- asegurarse de que el archivo existe
    if [ -e $1 ] 
    then 
        #- asegurarse de que es un archivo regular
        if [ -f $1 ] 
        then
            VALIDO=1 
        else
            echo "Error: $1 no es un archivo regular" 
            exit 3
        fi
    else
        echo "Error: el archivo $1 no exite"
        exit 2
    fi
else
  echo "Error: Ingrese el nombre de un archivo" 
  echo "Ejemplo uso: $(basename $0) NOMBRE_ARCHIVO"
  exit 1
fi 

if [ $VALIDO -eq 1 ]
then
    #- obtener los permisos del archivo en formato octal y mostrarlo
    echo "Permisos: $(stat --format='%a' $1)"
    #- obtener su tamaño (pasarlo a KB de ser necesario) y mostrarlo
    TAMANO_BYTES=$(stat --format='%s' $1)
    TAMANO_KBYTES=$(echo "scale=3; $TAMANO_BYTES/1000" | bc)
    echo "Tamaño en B: $TAMANO_BYTES"
    echo "Tamaño en KB: $TAMANO_KBYTES"
fi