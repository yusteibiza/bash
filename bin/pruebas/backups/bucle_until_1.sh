#!/bin/bash

INT=1

until [ $INT -gt 10 ] 
do 
    echo 'Valor de $INT = ' $INT
    INT=$[ $INT + 1 ]
done