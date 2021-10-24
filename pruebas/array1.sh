#!/bin/bash

POS=0
#ARRAY="Ibiza Murcia Valencia Madrid Palma"
ARRAY=(Ibiza Murcia Valencia Madrid Palma)
ARRAY2=([1]=Hola [0]=Adios)
echo "${ARRAY2[1]}, $USER"
read 

if [ $(whoami) != "root" ]
then
    echo -e "\n Tienes que ser root para ejecutar $0\n"
    exit 1
fi
echo -e "\n"

#for valor in $(ls /etc/[ab]*)
for valor in ${ARRAY[@]}
do
    echo -e " Posición $POS del array .: $valor"
    #POS=`expr $POS + 1`
    #POS=$(($POS + 1 ))
    POS=$[ $POS + 1 ]
done

echo -e "\n"