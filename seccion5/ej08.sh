#!/bin/bash

#Cree una función que tome un directorio como argumento y liste todos los archivos en el directorio.

function listar_dir {
    local DIRECTORIO=$1
    [ ! -e $DIRECTORIO ] && echo "El directorio no existe" && exit 1

    for F in $DIRECTORIO/*
    do
        [ -f $F ] && echo $(basename $F)
    done

}

listar_dir $1