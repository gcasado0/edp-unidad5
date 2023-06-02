#!/bin/bash

#V.3) Verificar passwords
#a) Crear un script que tome como entrada dos archivos de texto usuarios.txt y claves.txt,
#ambos deberán contener una única palabra por línea. El primero contendrá nombres de
#usuario, mientras que el segundo claves de acceso en formato plano. Ninguno puede ser
#vacío y deben contener la misma cantidad de líneas (ambas condiciones deben ser
#validadas por el script).
#El script deberá generar un nuevo archivo credenciales.txt que contendrá registros de la
#forma usuario:clave, donde usuario proviene del archivo usuarios.txt y clave del archivo
#claves.txt.
#
#b) Crear un script que emule el proceso de login de un usuario, solicitando nombre de
#usuario y luego la clave, la clave introducida no deberá mostrarse por pantalla mientas de
#tipea (tip: opción de read) y debe cotejarse con la clave correspondiente al usuario en el
#archivo credenciales.txt creado en el apartado a).
#Indicar claramente si el usuario no está registrado o si la clave ingresada no corresponde.

USUARIOS=./usuarios.txt
CLAVES=./claves.txt
CREDENCIALES=./credenciales.txt
CANTIDAD=$(cat $USUARIOS | wc -l)

> $CREDENCIALES

for ((i=1; i<=$CANTIDAD; i++))
do 
    USER=$(head -n $i $USUARIOS | tail -1)
    PASS=$(head -n $i $CLAVES | tail -1)

    LINEA=$USER:$PASS
    echo $LINEA >> $CREDENCIALES
done
echo 
read -p "Ingrese usuario: " USER
read -s -p "Ingrese password: " PASS
echo ""

CREDENCIAL=$(cat $CREDENCIALES | grep $USER)
if [[ $CREDENCIAL == "" ]]
then
    echo "Usuario no registrado"
else

    CLAVE=$(echo $CREDENCIAL | cut -d: -f2)

    if [[ $PASS == $CLAVE ]]
    then 
        echo "Login exitoso!"
    else
        echo "Error login"
    fi
fi
