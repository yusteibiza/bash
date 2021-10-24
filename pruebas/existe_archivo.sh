#!/bin/bash
clear
echo -e "  ------------------------------"
echo -e " -Comprobar si existe un archivo-"
echo -e "  ------------------------------\n"
read -p " -Ruta del archivo .: " archivo
if [ -f "$archivo" ]
then
    echo -e " -El archivo \e[1;33m[ \e[1;32m$archivo \e[1;33m]\e[0m existe\n"
else
    donde=`which $archivo`
    if [ ! -z $donde ]
    then
	echo -e " -El archivo \e[1;33m[ \e[1;32m$archivo \e[1;33m]\e[0m no existe, pero se ha encontrado en .: \e[1;33m[ \e[1;32m$donde \e[1;33m]\e[0m\n"
    else
	echo -e " -El archivo \e[1;33m[ \e[1;32m$archivo \e[1;33m]\e[0m no se encuentra.\n"    
    fi
fi
