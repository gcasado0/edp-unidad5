#!/bin/bash -ex

#Hacer un script que en el directorio actual valide el resultado del Ejercicio 9 (Sección 1).
#└── dir.a
#    ├── dir.b
#    │   ├── file.a
#    │   └── file.b
#    └── dir.c
#        └── link.a -> ../dir.b/file.a

if [ -e ../seccion1/dir.a ]
then 
    if [ -e ../seccion1/dir.a/dir.b ]
    then 
        if [ -e ../seccion1/dir.a/dir.b/file.a ]
        then 
            if [ -e ../seccion1/dir.a/dir.b/file.b ]
            then 
                if [ -e ../seccion1/dir.a/dir.c ]
                then 
                    if [ -e ../seccion1/dir.a/dir.c/link.a ]
                    then 
                        echo "OK"
                        exit 0
                    else
                        echo "../seccion1/dir.c/link.a"
                    fi
                else
                    echo "../seccion1/dir.c"
                fi
            else
                echo "../seccion1/dir.b/file.b"
            fi
        else
            echo "../seccion1/dir.b/file.a"
        fi
    else
        echo "../seccion1/dir.a/dir.b"
    fi
else
    echo "../seccion1/dir.a"
fi
echo "Fallo"
exit 1