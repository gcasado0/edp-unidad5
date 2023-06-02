#!/bin/bash
#V.4) Front-end para el comando chmod
#Crear un script que permita cambiar permisos a un archivo de forma interactiva. 
#Es decir,permitir que la persona vaya indicando qué permisos y para quien quiere conceder o
#revocar. Posteriormente aplicar estas acciones al archivo o directorio indicado.
#Consideraciones
#. Validar que el archivo o directorio existe y se tengan derechos suficientes para aplicar los cambios
#previo a la aplicación de los mismos.
#. Permitir la posibilidad de aplicar cambios recursivamente


FILE=$1

PS3='Elija> '
echo "Cambiar permiso a "
select SECTOR in "Cancelar" "u" "g" "o" "a"
do
    [ -e $SECTOR ] && echo "Elegir opcion valida!" && continue

    [ $REPLY == 1 ] && echo "Hasta luego" && break

    echo "Opcion elegida: " $SECTOR
    select PERMISO in "Volver" "r" "w" "x" 
    do  
        [ -e $PERMISO ] && echo "Elegir opcion valida!" && continue

        [ $REPLY == 1 ] && echo "Volviendo" && break
        echo "Opcion elegida: " $PERMISO
        select OP in "Volver" "+" "-"
        do
            [ -e $OP ] && echo "Elegir opcion valida!" && continue
            [ $REPLY == 1 ] && echo "Volviendo" && break

            CMD="chmod $SECTOR$OP$PERMISO $FILE"
            $CMD
            exit 0
        done
    done
done
