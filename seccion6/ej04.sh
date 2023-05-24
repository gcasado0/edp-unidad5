#!/bin/bash

#Reemplazar todas las apariciones de una palabra por otra en múltiples archivos
#cat archivo.txt | sed "s/agua/mar/g"
#cat archivo.txt | sed "s;agua;mar;g"

#sed -i 's/agua/mar/g' archivo.txt emails.txt

sed -i.old 's/mar/playa/g' archivo.txt emails.txt

