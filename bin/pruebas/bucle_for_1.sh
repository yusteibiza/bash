#!/bin/bash

if [ -z $1 ]
then
    echo -e "\n Tiene que poner de 1 a 3 parámetros"
    echo -e " Ejemplo... <bucle_for_1 uno dos tres>\n"
    exit 0
fi

clear
echo -e "\n   --------------------------"
echo -e " -[ \e[1;33mEjemplo de un blucle for\e[0m ]-"
echo -e "   --------------------------\n"
x=0

for i in $1 $2 $3
do
    x=`expr $x + 1`
    echo -e "\e[0;39m - Valor del parámetro \033[1;34m[$x]\e[0m ..: \e[1;32m$i"
done
echo -e "\e[0m\n ---------------------------------------\n"
