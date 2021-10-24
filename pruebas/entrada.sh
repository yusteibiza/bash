# Redirección de la entrada #

#!/bin/bash
clear 

if [ ! -d ./temp ]
then
    mkdir ./temp
fi

echo
read -p "Introducir un texto para convertir a mayúsculas: " texto
echo $texto > ./temp/fichtemporal.tmp
tr ['a-z'] ['A-Z'] < ./temp/fichtemporal.tmp > ./temp/amayusculas.txt
rm ./temp/fichtemporal.tmp
echo "Se ha creado el fichero ./temp/amayusculas.txt convertido en mayúsculas."
echo
