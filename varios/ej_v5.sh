#!/bin/bash

#V.5) Front-end para el comando find
#Mediante las man pages u otro recurso investigar el funcionamiento del comando find y
#crear una interfaz de usuario que permita buscar archivos según los siguientes criterios:

#Tipo  (directorio, archivo, pipe con nombre, symbolic link)
#Tamaño  (bytes, kbytes, megabytes)
#Permisos  (lectura, escritura, ejecución, combinaciones de los anteriores)
#Por número de inodo

#Ejemplo:
#$ bash my_find.sh
#deberá mostrar un menú similar al siguiente
#Interfaz para comando find
#1 - Búsqueda por tipo de archivo
#2 – Búsqueda por tamaño de archivo
#3 – Búsqueda según los permisos del archivo
#4 – Búsqueda por inodo
#Introduzca criterio de búsqueda:
#En este punto se solicita la ruta desde donde se comenzará la búsqueda y las entradas
#correspondientes a la selección realizada.
#Comentarios:
#Para la interfaz de usuario utilizar la estructura de control select
#Utilizar case para determinar y tratar cada criterio de búsqueda
#Considere el uso de funciones para reducir código
