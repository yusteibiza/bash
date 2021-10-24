#!/bin/bash

echo -e "\n - Información del equipo \e[1;32m$HOSTNAME\e[0m ...\n"
inxi -b
echo -e "\n"
neofetch
contador=5
echo -en " - Saliendo en .: "
while :
do
    echo -en "$contador, "
    contador=$(($contador-1))
    sleep 1

    if [ $contador -le 0 ]
    then
	break
    fi

done

#echo

#for i in $(seq 1 5)
#do
#    echo -n "$i, " 
#done

echo -e "¡¡¡Adios!!!\n"
