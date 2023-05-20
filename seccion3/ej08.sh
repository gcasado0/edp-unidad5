#!/bin/bash
#Crea un script que busque cualquier dirección de correo electrónico en un archivo.

grep -niE '[a-z0-9._]+@[a-z0-9.]+' $1
#grep -nE '[a-zA-Z0-9._]+@[a-zA-Z0-9.]+'
#grep -nE "[[:alnum:]._]+@[[:alnum:].]+"
#grep -Po '[a-zA-Z0-9._]+@[a-zA-Z0-9.]+'
