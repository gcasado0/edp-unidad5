#!/bin/bash

#V.5) Front-end para el comando find
#Mediante las man pages u otro recurso investigar el funcionamiento del comando find y
#crear una interfaz de usuario que permita buscar archivos según los siguientes criterios:
#Tipo (directorio, archivo, pipe con nombre, symbolic link)
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

#Tipo  (directorio, archivo, pipe con nombre, symbolic link)
function busqueda_por_tipo {
    read -p "Ingrese la ruta:" RUTA
    read -p "Ingrese el tipo (d,f,p,l):" TIPO

    find $RUTA -type $TIPO    
}

#Tamaño  (bytes, kbytes, megabytes)
function busqueda_por_tamaño {
    read -p "Ingrese la ruta:" RUTA
    read -p "Ingrese comparador (+,-):" COMPARADOR
    read -p "Ingrese el tamaño:" TAMANIO
    read -p "Ingrese la unidad (G,M,k,c):" UNIDAD

    find $RUTA  -size $COMPARADOR$TAMANIO$UNIDAD
} 

#Permisos  (lectura, escritura, ejecución, combinaciones de los anteriores)
function busqueda_por_permisos {
    read -p "Ingrese la ruta:" RUTA
    read -p "Ingrese permiso:" PERMISO
    read -p "Ingrese el tipo (d,f):" TIPO

    find $RUTA -type $TIPO -perm $PERMISO
} 

#find . -perm 664
#
#Search for files which have read and write permission for their owner, and group, but which other users can read but not write to.  Files which meet these criteria but have other permissions bits set (for example if someone can execute the file) will not be
#matched.
#
#find . -perm -664
#
#Search  for  files which have read and write permission for their owner and group, and which other users can read, without regard to the presence of any extra permission bits (for example the executable bit).  This will match a file which has mode 0777, for
#example.
#
#find . -perm /222
#
#Search for files which are writable by somebody (their owner, or their group, or anybody else).
#
#find . -perm /220
#find . -perm /u+w,g+w
#find . -perm /u=w,g=w
#
#All three of these commands do the same thing, but the first one uses the octal representation of the file mode, and the other two use the symbolic form.  These commands all search for files which are writable by either their  owner  or  their  group.   The
#files don't have to be writable by both the owner and group to be matched; either will do.
#
#find . -perm -220
#find . -perm -g+w,u+w
#
#Both these commands do the same thing; search for files which are writable by both their owner and their group.

#Por número de inodo
function busqueda_por_inodo {

    read -p "Ingrese la ruta:" RUTA
    read -p "Ingrese i-nodo:" INODO

    find $RUTA -inum $INODO

}


echo "Introduzca criterio de búsqueda:"
select OPCION in "Por tipo" "Por tamaño" "Según los permisos" "Por inodo" "Salir"
do
    [ -e "$OPCION" ] && echo "Elegir una opción válida" && continue    
    [ $REPLY -eq 5 ] && echo "Saliendo" && exit 0
    case $OPCION in
        "Por tipo") 
            busqueda_por_tipo;; 
        "Por tamaño") 
            busqueda_por_tamaño;;
        "Según los permisos") 
            busqueda_por_permisos;;
        "Por inodo") 
            busqueda_por_inodo;;
    esac 
done