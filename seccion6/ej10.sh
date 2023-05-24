#!/bin/bash

#Calcular la suma de los números en el archivo archivo.txt
echo "Mi solucion 1"
cat archivo.txt | grep -Eo  "[[:digit:]]+" | paste -sd+ | bc

echo "Mi solucion 2"
cat archivo.txt | grep -Eo  "[[:digit:]]+" | awk '{s+=$1} END {print s}'

echo "Solucion de la catedra"
grep -Eo '[0-9]+' archivo.txt | awk '{ sum += $0 } END { print "The sum of the numbers in archivo.txt is:", sum }'