#!/bin/bash
#Ejemplo de lo que es una variable local#

#Con esta función la variable nombre
#sólo cambia dentro de la función una
#vez que se sale vuelve al valor original
function CambiarNombreLocal {
    local nombre="Antonio"
}

#Con esta función la variable cambia
#una vez llamada la función en todo el
#resto del programa.
function CambiarNombre {
    nombre="Antonio"
}

echo
nombre="Pepe"
echo " -Mi nombre es .: $nombre ----> Valor original de la variable"
CambiarNombreLocal
echo " -Mi nombre es .: $nombre ----> Después de ejecutar la función CambiarNombreLocal" 
CambiarNombre
echo " -Mi nombre es .: $nombre -> Después de ejecutar la función CambiarNombre"
echo