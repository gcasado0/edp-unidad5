#!/bin/bash

#E.2) Crear un script que reciba un directorio como entrada y determine cuántos archivos
#dentro del mismo poseen extensiones .sh o .txt y si comienzan su nombre con dos letras
#minúsculas.

DIR=$1

#validar


#PATRON="^[a-z]{2}.*(\.sh|\.txt)$"
PATRON="^[a-z]{2}.*[\.sh|\.txt]$"

ls -1 $DIR | grep -E $PATRON | wc -l
