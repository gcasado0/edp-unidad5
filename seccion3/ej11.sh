#!/bin/bash

#Crea un script que solicite al usuario que ingrese una contraseña y verifique si cumple con los siguientes criterios:
#al menos 8 caracteres, 
#contiene al menos una letra mayúscula, 
#contiene al menos una letra minúscula 
#y contiene al menos un número.

read -p "Introduzca su contraseña: " n
VALIDAR_LONGITUD=8
VALIDAR_MINUSCULA="[a-zñ]+"
VALIDAR_MAYUSCULA="[A-ZÑ]+"
VALIDAR_NUMERO="[0-9]+"

if [[ ${#n} -ge $VALIDAR_LONGITUD ]]
then
    if [[ $n =~ $VALIDAR_MINUSCULA ]]
    then
        if [[ $n =~ $VALIDAR_MAYUSCULA ]]
        then
            if [[ $n =~ $VALIDAR_NUMERO ]]
            then
                echo "Correcto"
            else
                echo "Debe contener al menos un dígito numérico"    
            fi
        else
            echo "Debe contener al menos una letra mayúscula"
        fi
             
    else
        echo "Debe contener al menos una letra minúscula"
    fi
else
    echo "Debe ser mayor a 8 caracteres"
fi
