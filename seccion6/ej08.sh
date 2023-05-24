 #!/bin/bash
 
 #Listar las 5 palabras más frecuentes en el archivo de texto archivo.txt.
 
echo "Mi solucion"
cat archivo.txt | sed '/^$/d;s/ /\n/g;s/\.//g;s/,//g' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort | tail -5

echo "Solucion de la catedra"
cat archivo.txt | tr -s '[:space:]' '\n' | tr '[:upper:]' '[:lower:]' | grep -v '^$' | sort | uniq -c | sort -rn | head -n 5

#hay una diferencia porque no se quitaron los puntos ni las comas
echo "Solucion de la catedra corregida"
cat archivo.txt | tr -s '[:space:]' '\n' | tr '[:upper:]' '[:lower:]' | sed 's/\.//g;s/,//g' | grep -v '^$' | sort | uniq -c | sort -rn | head -n 5