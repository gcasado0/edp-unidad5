#!/bin/bash

#B.5) Crear un script que reciba como argumento tres números, indicando día, mes y año y
#determine si estos valores corresponden o no a una fecha válida.

#Emplear construcciones de test (corchetes [ ]) y operadores lógicos (&& por ejemplo).

#Fechas inválidas: son las que posean números no positivos y/o demasiado grandes para lo que
#representan, o bien no corresponden los días al mes indicado para el año establecido.
#Tip: puede ser de ayuda el comando date

DIA=$1
MES=$2
ANIO=$3
[[ ! ($DIA -ge 1 && $DIA -le 31) ]] && echo El dia es inválido
[[ ! ($MES -ge 1 && $MES -le 12) ]] && echo El mes es inválido
[[ ! ($ANIO -ge 1 && $ANIO -le 3000) ]] && echo El año es inválido

(date -d "$ANIO-$MES-$DIA" && echo VALIDO) || echo INVALIDO