#!/bin/bash
#Extraer todas las direcciones de correo electrónico del archivo de texto emails.txt
echo "Mi solucion"
grep -Pio  "[[:alnum:]._]+(\+)?[[:alnum:]]*@[[:alnum:]._]+" emails.txt

echo "Solucion de la catedra"
grep -Eio '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b' emails.txt