#!/bin/bash

#Crea un script que busque cualquier número de teléfono en un archivo que esté en el formato XXX-XXX-XXXX.
grep -nE '[0-9]{2,3}-[0-9]{3}-[0-9]{4}' $1
