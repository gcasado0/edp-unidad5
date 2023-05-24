#!/bin/bash

#B.3) Crear un script que reciba una cantidad de argumentos sin definir e indique si recibió
#una cantidad par o impar de argumentos. Emplear construcciones de test (corchetes [ ]) y
#operadores lógicos (&& por ejemplo).

echo $#
[ $# -eq 0 ] && echo No ingreso ningun argumento && exit 1

([ $(($#%2)) -eq 0 ] && echo Ingreso una cantidad par) || echo Ingreso una cantidad impar