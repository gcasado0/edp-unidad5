#!/bin/bash

# Create the main directory and subdirectories
mkdir -p directorio/subdirectorio1
mkdir -p directorio/subdirectorio2
mkdir -p directorio/subdirectorio3
mkdir -p directorio/subdirectorio4

# Create files in the main directory
touch directorio/{archivo1.txt,archivo2.txt}

# Create files in subdirectory 1
touch directorio/subdirectorio1/{archivo3.txt,archivo4.txt}

# Create files in subdirectory 3
touch directorio/subdirectorio3/{archivo5.txt,archivo6.txt}

# Create the access.log file
echo "192.168.0.1 - - [25/Abr/2023:12:34:56 -0700] \"GET /index.html HTTP/1.1\" 200 1234
192.168.0.2 - - [25/Abr/2023:12:35:01 -0700] \"POST /submit.php HTTP/1.1\" 302 -
192.168.0.1 - - [25/Abr/2023:12:36:02 -0700] \"GET /images/logo.png HTTP/1.1\" 200 5432
192.168.0.3 - - [25/Abr/2023:12:36:45 -0700] \"GET /about.html HTTP/1.1\" 200 9876" > access.log

# Create the archivo.txt file
echo "Este es un ejemplo de archivo de texto.
Contiene varias líneas de texto para probar los ejercicios de bash.
Se puede utilizar para buscar palabras, contar líneas, etc.

123
456
789" > archivo.txt

# Create the archivo.csv file
echo "Nombre,Edad,Ciudad
Ana,25,Madrid
Pedro,32,Barcelona
María,28,Madrid
Luis,30,Valencia" > archivo.csv

# Create the emails.txt file
echo "Este es un ejemplo de archivo que contiene direcciones de correo electrónico.
Puedes extraer todas las direcciones de correo electrónico utilizando el comando grep y la expresión regular proporcionada en el ejercicio.
Por ejemplo, john.doe@example.com, jane.smith@example.com, etc." > emails.txt