#!/bin/bash
var='^[0-9]+$'
if [[ $1 =~ $var ]]
then 
	echo "Se ingreso el numero: $1"
else
	echo "Error: no se ingreso un numero valido"
	exit 2
fi

if [[ $(($1%2)) -eq 0 ]]
then
	echo $1 es par
else
	echo $1 no es par
fi
exit 0
