#!/bin/bash
#Encontrar todos los directorios vacíos creados por el script en directorio

#solucion sin saber usar el find
cd directorio

for ELEMENTO in */
do  
    if [ -d $ELEMENTO ]
    then
        CANTIDAD=$(ls $ELEMENTO | wc -l)
        if [[ $CANTIDAD == 0 ]]
        then    
            echo $ELEMENTO
        fi
    fi
done

#solucion optima
find directorio/ -type d -empty