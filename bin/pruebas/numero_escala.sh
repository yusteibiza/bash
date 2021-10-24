#!/bin/bash

es_numero='^-?[0-9]+([.][0-9]+)?$'

while true;
do
    clear
    echo -e "\n - Introducir un número (ENTER=salir) .: "
    read num

    if [[ -z $num ]]
    then
	echo -e "\n"
	exit 0
    else
        if [[ $num =~ $es_numero ]]
	then
	    if [ "$num" -lt "10" ]
	    then
		echo -e " - El número $num es menor que 10, pulse una tecla ..."
	    elif [ "$num" -gt "10" ]
	    then
		echo -e "\n - El número $num es mayor que 10, pulse una tecla ..."
	    else
		echo -e "\n - El número $num es igual a 10, pulse una tecla ..."
	    fi
	    read
	else
	    echo -e " - Solo se aceptan números - "
	    read
	fi
    fi
done


### También de este otra manera funciona
#
# if (( "$num" < "10" ))
# then
#    echo -e "$num es menor de 10";
# fi


