#!/bin/bash

#B.4) Crear un script que reciba una cantidad de argumentos (no limitado) y los escriba
#(todos juntos) en un archivo llamado /tmp/args. Finalmente mostrar el archivo.

echo $@ > /tmp/args.borrar