#########################################################
##### Estre script redirige las salidas y entradas ######
## La salida estandar es 0=consola, 1=fichero, 2=error ##
#########################################################
#!/bin/bash
clear

if [ ! -d ./temp ]
then 
    mkdir ./temp
fi

echo "Listado de /etc y otro directorio que no existe"
echo "El directorio que si existe se redirige a la salida de fichero=1"
echo "El directorio que no existe dará error y se redirigira a un fichero de error"
echo "ls -la /etc /usrusr > ./temp/listado_bueno.txt 2> ./temp/listado_error.txt"
ls -la /etc /usrusr > ./temp/listado_bueno.txt 2> ./temp/listado_error.txt
echo

