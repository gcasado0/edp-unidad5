#!/bin/bash
#Hacer un script que reciba un año y determine si es un año bisiesto o no. 
#Ver https://es.wikipedia.org/wiki/Año_bisiesto.
#Año bisiesto es el divisible entre 4, salvo que sea año secular -último de cada siglo, terminado en «00»-, 
#en cuyo caso también ha de ser divisible entre 400.

ANIO=$1
DIVISOR1=4
DIVISOR2=100
DIVISOR3=400

VALIDADOR='^[0-9]+$'
if [[ $ANIO =~ $VALIDADOR ]]
then 
	echo "Se ingreso el año: $ANIO"
else
	echo "Error: no se ingreso un año valido"
	exit 2
fi

#Desde un enfoque algorítmico, se consideran las proposiciones o enunciados lógicos siguientes:
#p: Es divisible entre 4
#q: Es divisible entre 100 (¬q entonces significa no divisible entre 100)
#r: Es divisible entre 400
#Entonces se utiliza la fórmula lógica p∧(¬q∨r)
#para establecer si un año dado es bisiesto: es bisiesto si es divisible entre cuatro y (no es divisible entre 100 o es divisible entre 400).

P="0"
Q="0"
R="0"
#Año bisiesto es el divisible entre 4?
if [[ $(($ANIO%4)) -eq 0 ]]
then	
	P="1"
	echo "P=$P -> Divisible por 4"
fi

if [[ $(($ANIO%100)) -eq 0 ]]
then	
	Q="1"
	echo "Q=$Q -> Divisible por 100"
fi

if [[ $(($ANIO%400)) -eq 0 ]]
then	
	R="1"
	echo "R=$R -> Divisible por 400"
fi


#Entonces se utiliza la fórmula lógica p∧(¬q∨r)

if [[ $P == "1" && ( $Q == "0" || $R == "1" ) ]]
then
	echo $?
	echo "El año: $ANIO -> Es bisiesto"
else
	echo $?
	echo "El año: $ANIO -> No es bisiesto"
fi

exit 0
