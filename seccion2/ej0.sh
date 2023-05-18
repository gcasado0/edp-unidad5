#!/bin/bash
VALOR=$1
VALIDADOR='^(-)?[0-9]+$'
if [[ $1 =~ $VALIDADOR ]]
then 
	echo "Se ingreso el numero: $VALOR"
else
	echo "Error: no se ingreso un numero valido"
	exit 2
fi

if [[ $(($VALOR%2)) -eq 0 ]]
then
	echo $VALOR es par
else
	echo $VALOR no es par
fi
exit 0
