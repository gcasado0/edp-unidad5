#!/bin/bash

#C.2) Crear un script que reciba una única cadena como argumento y determine si esa
#cadena es o no un palíndromo.
#Tip: utilizar el comando rev

#ejemplos:
#2002
#ojo, radar, orejero, reconocer
#"Dabale arroz a la zorra el abad". Somos o no somos, Isaac no ronca así, 
#Sé verlas al revés, Amó la paloma, Anita lava la tina, Luz azul, Yo hago yoga hoy, Ana lava lana

if [ ! -z "$1" ]
then    
    CADENA=$(echo "$1" | tr '[:upper:]' '[:lower:]' | tr -d ' ')
    INVERSA=$(echo "$CADENA" | rev)
    if [ "$CADENA" == "$INVERSA" ]
    then    
        echo "$1" es un palíndromo
    else
        echo "$1" no lo es
    fi
else 
    echo "La cadena esta vacia"
fi 



