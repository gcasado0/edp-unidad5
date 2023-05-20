#!/bin/bash

#Crea un script que solicite al usuario que ingrese un número entre 1 y 5 e imprima un mensaje según el número ingresado.

#validar que sea un numero
#validar que este dentro del rango 1-5
#mostrar mensajes

read -p "Introduzca un numero entre 1-5: " n
VALIDAR_NUMERO="^[0-9]+$"

if [[ $n =~ $VALIDAR_NUMERO ]]
then
    if [[ $n -ge 1 && $n -le 5 ]]
    then 
        echo "El numero $n es correcto"
    else
        echo "El numero $n no esta dentro del rango 1-5"
    fi
else
    echo "El texto \"$n\" no es un numero"
fi
