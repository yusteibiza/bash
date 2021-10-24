#!/bin/bash

##################################
# Script que compara dos números #
##################################

function HacerOtraOperacion()
{
    echo -en " ¿Hacer otra operación (S/N) .: [ ]\b\b"

    #select otra in S s N n

    read -N 1 otra
    #read -N 1 -p " ¿Hacer otra operación? (S/N) .: " otra

    #if [ "$otra" = "N" -o "$otra" = "n" ]
    if [[ $otra == [sS] ]]
    then
	return 0
    elif [[ $otra == [nN] ]]
    then
	return 1
    else
	return 2
    fi
}

while true
do
    clear
    echo -e "\n  +----------------------------+"
    echo -e "  | Comparación de dos números |"
    echo -e "  +----------------------------+"
    echo -en "\n -Introducir el primer número ..: "
    read num1
    echo -en " -Introducir el segundo número .: "
    read num2
    
    if [ ! -z "$num1" -a ! -z "$num2" ]
    then     
        if [[ $num1 -lt $num2 ]]
	then
	    echo -e "\n -El número $num1 es menor que $num2\n"
        elif [[ $num1 -eq $num2 ]]
	then
	    echo -e "\n -El número $num1 es igual a $num2\n"
        else
    	    echo -e "\n -El número $num1 es mayor que $num2\n"
	fi
    fi
    HacerOtraOperacion
    valor=$?
    while  ( true )
    do
	case $valor in
	    0)
		break
	    ;;
	    1)
		echo -e "\n\n ¡¡¡Adios!!!\n"
		exit 0
	    ;;
	    2)
		echo -e "\n Valor incorrecto ... \n\a"
		HacerOtraOperacion
		valor=$?
	    ;;
	    *)
	    ;;
	esac
    done
done
