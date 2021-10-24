#!/bin/bash

contador=0
while [ $contador -lt 10 ]
do
    echo -e "Hola, $contador\r"
    if [ $contador -eq 9 ]
    then
	break
    fi
    ((contador++))
    #contador=$((contador + 1))
done