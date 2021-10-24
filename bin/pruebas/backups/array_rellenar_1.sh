#!/bin/bash

echo -e "\n"

arr=
contador=0

for f in *
do
    arr="$arr $f"
    contador=$[ $contador + 1 ]
done

for fichero in ${arr[@]}
do
    echo " - Fichero .: $fichero" 
done
echo -e "---------------------------------------------"
echo -e " - Ficheros totales .: $contador"
echo -e "\n"

