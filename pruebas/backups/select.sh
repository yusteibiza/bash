#!/bin/bash

echo -e "\n"
select VALOR in Archivo Herramientas Accesorios Ayuda Salir

do
    if [ "$VALOR" = "Salir" ]
    then
	echo -e "\nPrograma terminado...\n"
        break
    else 
        echo -e "\nAbriendo el menú... $VALOR\n"
        break
    fi	
done
