#!/bin/bash

#Hacer un script que reciba como argumento una ruta (absoluta o relativa), 
#chequear que la misma existe en el sistema de archivos 
#y luego imprimir en pantalla si es de alguno de los siguientes tipos:
#“archivo”: archivo regular.
#“directorio”: directorio.
#“device”: block device o character device.
#“link”: hard link o symbolic link.
#“otro”: ninguno de los casos anteriores.

ARCHIVO=$1

if [ -e $ARCHIVO ]
then
    if [[ -h $ARCHIVO || -L $ARCHIVO ]]; then echo "link"; exit 0; fi
    if [ -f $ARCHIVO ]; then echo "archivo"; exit 0; fi
    if [ -d $ARCHIVO ]; then echo "directorio"; exit 0; fi
    if [[ -b $ARCHIVO || -c $ARCHIVO ]]; then echo "device"; exit 0; fi
    echo "otro"
    exit 0
else
    echo "El archivo $ARCHIVO no existe"
    exit 1
fi

