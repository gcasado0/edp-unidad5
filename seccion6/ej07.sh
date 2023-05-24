#!/bin/bash

#Encontrar el número de direcciones IP únicas en el archivo access.log

cat access.log | awk '{ print $1 }' | sort | uniq | wc -l