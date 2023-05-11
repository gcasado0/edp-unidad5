#!/bin/bash

PS3='Elija> '
echo "Cual es su color favorito?"
select color in "SALIR" "Blanco" "Amarillo" "Azul" "Negro" "Rojo" "Verde"
do
    [ -e $color ] && echo "Elegir opcion valida!" && continue
    [ $REPLY == 1 ] && echo "Hasta luego" && break
    echo "Opcion elegida: " $color
done
echo "Continua el código...."
exit 0
