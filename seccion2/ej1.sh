#!/bin/bash
#Hacer un script que reciba dos números y determine si el primero es divisible por el segundo.
DIVIDENDO=$1
DIVISOR=$2

VALIDADOR='^(-)?[0-9]+$'
if [[ $DIVIDENDO =~ $VALIDADOR ]]
then 
	echo "Se ingreso el dividendo: $DIVIDENDO"
else
	echo "Error dividendo: no se ingreso un numero valido"
	exit 2
fi
if [[ $DIVISOR =~ $VALIDADOR && $DIVISOR -ne "0" ]]
then 
	echo "Se ingreso el divisor: $DIVISOR"
else
	echo "Error divisor: no se ingreso un numero valido"
	exit 2
fi

if [[ $(($DIVIDENDO%$DIVISOR)) -eq 0 ]]
then
	echo Es divisible
else
	echo No es divisible
fi
exit 0
