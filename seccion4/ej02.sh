#!/bin/bash

#Crea un script que solicite al usuario ingresar un número 
#y luego calcule la suma de todos los números desde 1 hasta ese número.

read -p "Ingrese un numero: " n
SUMA=0
for ((i=1; i<=$n; i++))
do
    SUMA=$(($SUMA+$i))
done
echo "Total:" $SUMA 
