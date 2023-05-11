#!/bin/bash
#Hernán Gonzalez18:20

C_NUM=0
C_PAR=0
shopt -s extglob
while :
do
	echo "Inserte un numero o 0 para salir"
	read CMD
	case $CMD in
		0) break ;;
		?(-)+([0-9])) C_NUM=$(($C_NUM+1))
		   if [ $(($CMD%2)) -eq 0 ]
		   then
			C_PAR=$(($C_PAR+1))
		   fi
		   ;;
	   	*) echo "Ha ingresado algo inválido!" ;;
	esac
done
PORCENTAJE_PARES=$(($C_PAR*100/$C_NUM))
echo "Se ingresaron $C_NUM números"
echo "Un $PORCENTAJE_PARES% fue par"