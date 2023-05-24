#!/bin/bash
#Crea un script que solicite al usuario ingresar un número 
#y calcule su factorial (el producto de todos los números enteros positivos desde 1 hasta el número ingresado). 
#No salir del script hasta que se introduzca la x o X.

read -p "Ingrese un numero positivo o x para salir: " n
while [[ $n -ne "x" && $n -ne "X" ]]
do
    FACTORIAL=1

    for ((i=1; i<=$n; i++))
    do
        FACTORIAL=$(($FACTORIAL*$i))
    done
    echo Factorial de $n = $FACTORIAL
    read -p "Ingrese un numero positivo o x para salir: " n
done
