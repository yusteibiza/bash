#!/bin/bash

function OtraOperacion
{
    echo -en " ¿Otra operación? (S/N) .: [ ]\b\b"
    read -N 1 otra
    if [[ $otra == [sS] ]]
    then
	return 1
    else
	return 2
    fi    
}

while true
do
    clear
    echo -en "\n -Introducir un número o Q=salir ..: "
    read num
    
    if [ ! -z "$num" ]
    then     
	if [ "$num" == "Q" -o "$num" == "q" ]
	then
	    echo -e "\n ¡¡¡Adios!!!\n"
	    exit 0
	fi
    fi

    if [ "$num" -lt "10" ]
    then
	echo -e "\n -El número $num es menor que 10\n"
    elif [ "$num" -eq "10" ]
    then
	echo -e "\n -El número $num es igual a 10\n"
    else
	echo -e "\n -El número $num es mayor que 10\n"
    fi
    #sleep 3
    OtraOperacion
    if [[ $? == 2 ]]
    then
	echo -e "\n\n"
	exit 0
    fi
done
