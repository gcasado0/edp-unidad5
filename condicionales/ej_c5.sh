#!/bin/bash

#C.5) Crear un programa que permita recibir el nombre completo de un mes del año (M) en
#inglés y muestre por pantalla el mensaje “El mes M tiene X días”. Emplear case para su
#resolución.
#Nota: ignorar el caso de año bisiesto.


#pasar el mes ingreado a minuscula
MES=$(echo $1 | tr [:upper:] [:lower:])


case $MES in
    january)
        DIAS=31;;
    february)
        DIAS=28;; 
    march)
        DIAS=30;; 
    *)
        DIAS=0
esac


if [ $DIAS -gt 0 ]
then
    echo "El mes $MES tiene $DIAS días"
else
    echo "No existe el mes ingresado"
fi