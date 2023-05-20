#!/bin/bash

#Crea un script que busque la palabra “manzana” en un archivo e imprima la línea en la que aparece.
#(ver grep). Corra este comando para tener un archivo de ejemplo:
#curl https://demo.hedgedoc.org/s/NS-deBAHz/download > manzana.txt


grep -n "manzana" $1