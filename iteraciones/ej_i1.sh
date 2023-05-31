#!/bin/bash 

#I.1) Crear un script para mostrar por pantalla los números impares del 1 al n.
#n es un argumento recibido por la línea de comandos y debe ser un entero positivo.



[ $# -eq 0 ] && echo "Debe ingresar un parametro" && exit 1

N=$1
VALIDAR="[0-9]+"
[[ ! "$N" =~ $VALIDAR ]] && echo "Debe ingresar un numero" && exit 2

if [ $N -gt 0 ]
then
    for ((i=0; i<=$N; i++))
    do
        if [ $(($i%2)) -eq 1 ] #es impar
        then
            echo $i
        fi
    done
else
    echo "El numero ingresado debe ser positivo"
fi