#!/bin/bash

#Modifica el script anterior (ej05.sh) para que también busque la palabra “colesterol”.

#grep -n 'manzana\|colesterol' $1

#grep -nE 'manzana|colesterol' $1

grep -n -w -e manzana -e colesterol $1