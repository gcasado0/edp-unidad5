#!/bin/bash

#V.2) Día de cumpleaños y días vividos

#a) Deberá ingresarse en formato dd-mm-aaaa (guión incluido) la fecha en que nació y el
#script retornará el día de la semana de dicha fecha.
#Nota: La fecha introducida debe ser válida, el script verificará esto, en caso de fecha inválida el script
#aborta comentando dicha situación. Puede ser útil el comando date.

#b) Días vividos
#Deberá ingresarse en formato dd-mm-aaaa la fecha en que nació, el script deberá retornar
#la cantidad de días transcurridos hasta la fecha.
#Nota: La fecha introducida debe ser válida, en caso contrario el programa aborta.

#Validaciones
FECHA=$1
FORMATO="^[0-9]{2}-[0-9]{2}-[0-9]{4}$"

[ ! $# -gt 0 ] && echo "Debe ingresar una fecha" && exit 1
[[ ! $FECHA =~ $FORMATO ]] && echo "Debe ingresar una fecha con este formato: dd-mm-aaaa" && exit 2

DIA=$(echo $FECHA | cut -d- -f1)
MES=$(echo $FECHA | cut -d- -f2)
ANIO=$(echo $FECHA | cut -d- -f3)

#Podria validar cada numero 
[ ! $DIA -le 31 ] && echo "El dia debe ser menor o igual  a 31" && exit 3
[ ! $MES -le 12 ] && echo "El mes debe ser menor o igual a 12" && exit 3
[ ! $ANIO -gt 0 ] && echo "El año debe ser menor o igual a 2023" && exit 3

RTA=$(date -d "$ANIO-$MES-$DIA" "+%A")

if [[ $RTA == "" ]]
then
    echo "Fecha invalida"
    exit 4
else
    echo "Dia de la semana: $RTA"
fi

DIA_ACTUAL=$(date "+%d") 
MES_ACTUAL=$(date "+%m")
ANIO_ACTUAL=$(date "+%Y")

DIAS_ACTUAL=$((($ANIO_ACTUAL-1)*365+(10#$MES_ACTUAL-1)*30+10#$DIA_ACTUAL))
DIAS_NACIMIENTO=$((($ANIO-1)*365+10#$MES*30+10#$DIA))

echo "Dias desde el nacimiento: " $(($DIAS_ACTUAL-$DIAS_NACIMIENTO))


