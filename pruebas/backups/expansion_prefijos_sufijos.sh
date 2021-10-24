#!/bin/bash
### Expansión, prefijos y sufijos ###

if [ ! -d ./temp ]
then
    mkdir ./temp
fi
echo -e "Expandir fácil"
echo {a,b,c}
echo {a,b,c}{1,2,3,4,5}
echo {a,b,c}{1..5}
read -p "Pulse una tecla..."

#           /prefijo/Exp../Sufijo
touch ./temp/fichero{0..99}prueba.txt
# Esto creará ficheroXXprueba.txt donde XX=0-99

ls -l ./temp
rm ./temp/fichero{0..99}prueba.txt

echo -e "\n" pre{a..c}{1..5}
echo -e "\n Ahora con un caracter dentro de la secuencia"
echo -e pre{"a - ",b}{1..5}

