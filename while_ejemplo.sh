#!/bin/bash
shopt -s extglob
CANTIDAD=0
PORCENTAJE=0

while :
do
	echo "Ingrese un numero: "
	read NUMERO
	case $NUMERO in
		0) break ;;
		?(-)+([0-9])) CANTIDAD=$(($CANTIDAD+1)); 
			if [ $(($NUMERO%2)) -eq 0 ]
			then
				PORCENTAJE=$(($PORCENTAJE+1))
			fi
			;;
  		*) echo "Ha ingresado algo incorrecto";;
	esac
done
echo Cantidad de numeros ingresados: $CANTIDAD
echo Porcentaje de numeros pares: $(($PORCENTAJE*100/$CANTIDAD))%