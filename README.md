# edp-unidad5
bash scripts de la carrera TUIA

https://demo.hedgedoc.org/s/lUsOLW1TW#Super-Mega-Gu%C3%ADa-de-Bash

Short notation	Long notation	Result
set -f	set -o noglob	Disable file name generation using metacharacters (globbing).
set -v	set -o verbose	Prints shell input lines as they are read.
set -x	set -o xtrace	Print command traces before executing command.

set -x			# activate debugging from here
w
set +x			# stop debugging from here

willy:~/scripts> bash -x script1.sh


En el case el pattern matching que va es el de bash (lo pueden buscar en `man bash`). sería:
[xX]) algo;;
+([0-9])) otro algo;;
*) otro algo;;

Si usan lo que pasé recién tienen que setear la variable extglob para que funcione:
`shopt -s extglob`

Hernán Gonzalez18:31
Esto anda pero hay varias cositas que no vimos:
#!/bin/bash

file="$1"

if [[ ! -f "$file" ]]; then
  echo "File does not exist."
  exit 1
fi

declare -a lines

while IFS= read -r line; do
  lines=("$line" "${lines[@]}")
done < "$file"

for line in "${lines[@]}"; do
  echo "$line"
done

Hernán Gonzalez18:37
Este anda bien, con read en vez de cat:
#!/bin/bash

file="$1"

if [[ ! -f "$file" ]]; then
  echo "File does not exist."
  exit 1
fi

IFS=$'\n' read -d '' -r -a lines < "$file"

for ((i=${#lines[@]}-1; i>=0; i--)); do
  echo "${lines[i]}"
done
manjaro

Hernán Gonzalez18:34
Esto también anda pero quita los espacios, tendría que revisarlo un toque más pero es bastante más fácil:
#!/bin/bash

file="$1"

if [[ ! -f "$file" ]]; then
  echo "File does not exist."
  exit 1
fi

lines=($(cat "$file"))

for ((i=${#lines[@]}-1; i>=0; i--)); do
  echo "${lines[i]}"
done


Ariel D'Alessandro18:43
acá está el ejercicio para dar vuelta un archivo usando arrays:
#!/bin/bash

file=$1
i=0

while read line ; do
    lines[$i]="$line"
    i=$(($i+1))
done < $file

for ((i=${#lines[@]}-1; i>=0; i--)); do
	echo ${lines[$i]}
done
ah, no había visto tu mensaje jaja
Hernan Furiasse18:46
creo que entiendo todo menos esto: #lines[@]
que onda eso?
(todo de lo que vimos al menos*)
Ariel D'Alessandro18:47
eso te da la longitud del array
viste que ya habiamos usado #VAR para obtener la longitud de una string
en este caso, como la variable es un array (en vez de un string) tenés que referenciarlo como VAR[@]
Hernan Furiasse18:48
claro claro
Hernan Furiasse18:49
esta bueno tambien saber que se puede hacer esto
while read line ; do
    lines[$i]="$line"
    i=$(($i+1))
done < $file
seria lo mismo que:
while read line ; do
    lines[$i]="$line"
    i=$(($i+1))
done < $file
perdon
seria lo mismo que:
cat $file | while read line ; do
    lines[$i]="$line"
    i=$(($i+1))
done
?