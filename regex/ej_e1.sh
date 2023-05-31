#!/bin/bash

#E.1) Crear un script que indique cuántos archivos regulares con el nombre (exacto)
#README existen en el directorio /usr/share/doc.

ls -1 /usr/share/doc/*/ | grep "^README$" | wc -l