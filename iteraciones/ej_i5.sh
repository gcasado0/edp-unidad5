#!/bin/bash

#I.5) Crear un script que permita recibir tres argumentos: 
#una palabra P, un número positivo n y una ruta. 
#Se debe validar la cantidad de argumentos, 
#que n cumpla los requerimientos y
#se tenga permiso de escritura en la ruta indicada.
#Deberá generarse con esta información un archivo llamado “palabra_P.dat” en la ruta
#especificada, que contenga n líneas numeradas y que cada línea el texto indique
#“Se ingresó la palabra P”.

#Validaciones
[ ! $# -eq 3 ] && echo "Se deben ingresar 3 argumentos" && exit 1

PALABRA=$1
N=$2
RUTA=$3

# N numero y positivo
VALIDAR="^(-)?[0-9]+$"
[[ ! $N =~ $VALIDAR ]] && echo "Arg 2: Debe ingresar un numero" && exit 2
[ ! $N -gt 0  ] && echo "Arg 2: Debe ingresar un numero mayor que cero" && exit 3
#se tenga permiso de escritura en la ruta indicada.
[ ! -e $RUTA ] && echo "Arg 3: No existe la ruta" && exit 4
[ ! -d $RUTA ] && echo "Arg 3: No es un directorio" && exit 5
[ ! -w $RUTA ] && echo "Arg 3: No puedo escribir en la ruta" && exit 5


#Deberá generarse con esta información un archivo llamado “palabra_P.dat” en la ruta
#especificada, que contenga n líneas numeradas y que cada línea el texto indique
#“Se ingresó la palabra P”.

ARCHIVO="$RUTA/palabra_$PALABRA.dat"
#cat "" > $ARCHIVO
#cat /dev/null > $ARCHIVO
> $ARCHIVO

for ((i=1; i<=$N; i++))
do
    echo "$i - Se ingresó la palabra $PALABRA" >> $ARCHIVO
done




