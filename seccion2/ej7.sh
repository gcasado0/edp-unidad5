#!/bin/bash

#Hacer un script que recibe como primer argumento un comando de bash y luego cualquier cantidad variable de argumentos. 
#El script debe llamar al comando de bash con todos estos argumentos. Ayuda: ver el comando shift y la variable $@.

CMD=$1
shift
ARGUMENTOS=$@

$CMD $ARGUMENTOS