#!/bin/bash

#Diseña un script que cuente y muestre la cantidad de archivos que hay en un directorio específico. 
#Pasar por parametro el directorio a evaluar y verificar que sea un directorio.

DIRECTORIO=$1

if [[ -e $DIRECTORIO && -d $DIRECTORIO ]]
then
    TOTAL=0
    SOLO_ARCHIVOS=0
    for f in $(ls $DIRECTORIO )
    do
        TOTAL=$(($TOTAL+1))
        if [ -f $DIRECTORIO/$f ]
        then            
            SOLO_ARCHIVOS=$(($SOLO_ARCHIVOS+1))
        fi
    done
    echo "Hay $TOTAL elementos en el directorio $DIRECTORIO"
    echo "Hay $SOLO_ARCHIVOS archivos en el directorio $DIRECTORIO"
else
    echo "El parámetro ingresado no es un directorio"
fi
