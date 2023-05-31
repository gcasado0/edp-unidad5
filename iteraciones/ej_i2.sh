#!/bin/bash 

#I.2) Crear un script para mostrar por pantalla los números pares del n al 2.
#n es un argumento recibido por la línea de comandos y debe ser un entero mayor a 2.

[ $# -eq 0 ] && echo "Debe ingresar un parametro" && exit 1

N=$1
VALIDAR="[0-9]+"
[[ ! "$N" =~ $VALIDAR ]] && echo "Debe ingresar un numero" && exit 2

if [ $N -gt 2 ]
then
    for ((i=$N; i>=2; i--))
    do
        if [ $(($i%2)) -eq 0 ] #es par
        then
            echo $i
        fi
    done
else
    echo "El numero ingresado debe ser positivo y mayor a 2"
fi