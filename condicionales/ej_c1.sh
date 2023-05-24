#!/bin/bash

#C.1) Crear un script que reciba la ruta absoluta a un archivo e indique si existe o no y si se
#trata de un archivo regular o un directorio.

if [ -e $1 ]
then
    if [ -f $1 ]
    then    
        echo "El archivo es regular"
    else 
        if [ -d $1 ]
        then
            echo "La ruta es un directorio"
        else
            echo "La ruta ingresada es desconocida"
        fi
    fi
else 
    echo "El ruta no existe"
fi 


