#!/bin/bash

#Convertir el archivo CSV archivo.csv a un archivo separado por tabs
cat archivo.csv | sed 's/,/\t/g' > archivo_tab.csv
cat archivo.csv | tr ',' '\t' > archivo_tab2.csv