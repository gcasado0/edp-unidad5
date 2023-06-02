#!/bin/bash

#V.1) Comando tac
#a) Interpretar la página de manual del comando tac, realizar pruebas con el comando.
#b) Crear un script que imprima el contenido de un archivo de texto de manera invertida, es
#decir primero la última línea, luego la penúltima y así sucesivamente hasta imprimir en
#último lugar la primer línea del archivo, pero SIN usar el comando tac.

ARCHIVO=$1

CANTIDAD=$(cat $ARCHIVO | wc -l)

for ((i=$CANTIDAD; i>0; i--))
do
    LINEA=$(head -n $i $ARCHIVO | tail -1)
    echo $LINEA
done
