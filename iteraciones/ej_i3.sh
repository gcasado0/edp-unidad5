#!/bin/bash

#I.3) Crear un script que reciba como argumentos una cantidad de palabras.
#El script debe determinar cuántas palabras son y cuántas de ellas tienen al menos 3
#caracteres.
#En caso de no suministrarse argumentos, deberá indicar que sin argumentos el script no
#puede generar resultados.

[ $# -eq 0 ] && echo "Debe ingresar palabras como argumentos" && exit 1

CANTIDAD_TOTAL=$#
CANTIDAD_MAYOR_3=0

for PALABRA in $@
do 
    echo $PALABRA
    if [ ${#PALABRA} -ge 3 ]
    then
        CANTIDAD_MAYOR_3=$(($CANTIDAD_MAYOR_3+1))
    fi
done

echo "Total de palabras: $CANTIDAD_TOTAL"
echo "Total de palabras con al menos 3 caracteres: $CANTIDAD_MAYOR_3"