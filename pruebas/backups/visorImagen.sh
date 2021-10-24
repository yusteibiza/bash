#!/bin/bash

### Visor de imágenes en modo texto ###
### Requiere el programa 'cacaview' ###

echo;
clear

CACAV=`which cacaview`

if [ -z $CACAV ]
then
    echo -e " - Se requiere la dependencia cacaview, se aborta el programa.\n"
    exit 0
else
    echo -e "\n"
    read -p " - Introducir la ruta de la imágen .: " IMAGEN
    $CACAV $IMAGEN f
    echo -e "\n"
fi

