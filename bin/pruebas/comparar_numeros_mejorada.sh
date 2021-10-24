#!/bin/bash

##################################
# Script que compara dos números #
##################################

function HacerOtraOperacion()
{
    echo -en " ¿Hacer otra operación? (S/N) .: [ ]\b\b"
    tput sc
    otra=" "
    while [[ ! $otra == [sS] || ! $otra == [nN] ]]
    do
	read -N 1 otra
	if [[ $otra == [sS] ]]
	then
	    return 0
	elif [[ $otra == [nN] ]]
	then
	    return 1
	else
	    tput rc
	    echo -en " \b" 
	fi
    done
}

while true
do
    #snum='^[0-9]+$' -> Solo números positivos
    snum='^-?[0-9]+([.][0-9]+)?$'
    clear
    echo -e "\n  +----------------------------+"
    echo -e "  | Comparación de dos números |"
    echo -e "  +----------------------------+"
    while :
    do
	tput sc
	echo -en "\n -Introducir el primer número ..: "
	read num1
	if [[ $num1 =~ $snum ]]
	then
	    break
	fi
	tput rc
	tput ed
    done
    while :
    do
	tput sc
	tput el
	echo -en " -Introducir el segundo número .: "
	read num2
	if [[ $num2 =~ $snum ]]
	then
	    break
	fi
	tput rc
	tput ed
    done
    if [ ! -z "$num1" -a ! -z "$num2" ]
    then
        if [ $num1 -lt $num2 ]
	then
	    echo -e "\n -El número $num1 es menor que $num2\n"
        elif [ $num1 -eq $num2 ]
	then
	    echo -e "\n -El número $num1 es igual a $num2\n"
        else
    	    echo -e "\n -El número $num1 es mayor que $num2\n"
	fi
    fi
    HacerOtraOperacion
    valor=$?
    case $valor in
        0)
	continue
        ;;
        1)
	echo -e "\n\n ¡¡¡Adios!!!\n"
	exit 0
        ;;
	*)
	;;
    esac
done
