#!/bin/bash

MANERA=$1

if [ "$MANERA" == "0" ]
then
    echo -e "\nFor manera estandar\n"
    for i in 1 2 3 4 5
    do
	echo -en "$i "
    done
elif [ "$MANERA" == "1" ]
then
    echo -e "\nFor secuencial 1 con {X..Y}\n"
    for i in {1..10}
    do
	echo -en "$i "
    done
elif [ "$MANERA" == "2" ]
then
    echo -e "\nFor secuencial 2 con comanando seq X\n"
    for i in $(seq 10)
    do
	echo -en "$i "
    done
elif [ "$MANERA" == "3" ]
then
    echo -e "\nFor secuencial 4 con formato C#\n"
    for ((i=0;i<=10;i++))
    do
	echo -en "$i "
    done
else
    echo -e "\nTiene que especificar un parámetro entre 0 y 3"
fi

echo -e "\n"
