#!/bin/bash

#Crea un script que solicite al usuario que ingrese una oración e imprima un mensaje 
#según si la oración termina con un punto, signo de exclamación o signo de interrogación.


read -p "Introduzca su mensaje: " mensaje
VALIDAR_PUNTO="\.$"
VALIDAR_EXCLAMACION="\!$"
VALIDAR_INTERROGACION="\?$"


if [[ $mensaje =~ $VALIDAR_PUNTO ]]
then
    echo "Su mensaje termina en un punto"
else
    if [[ $mensaje =~ $VALIDAR_EXCLAMACION ]]
    then
        echo "Su mensaje termina en una exclamación"
    else
        if [[ $mensaje =~ $VALIDAR_INTERROGACION ]]
        then
            echo "Su mensaje termina en una interrogación"
        else
            echo "No sé en que termina su mensaje"    
        fi
    fi
fi
