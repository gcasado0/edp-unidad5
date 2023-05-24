#!/bin/bash

#Contar el número de procesos en ejecución para cada usuario.

ps -ef | awk '{print $1}' | sort | uniq -c
ps -ef | awk '{ print $1 | "sort" }' | uniq -c #en este caso usa un proceso menos sort
