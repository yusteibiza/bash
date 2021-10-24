#!/bin/bash
# Quitar la extensión .sh a los archivos que no tengan extensión #

echo

for fichero in *
do
    if [ -f $fichero ]
    then
	if [[ `echo $fichero | cut -d"." -f2` == "sh" ]] ||
	   [[ `echo $fichero | cut -d"." -f2` == "Sh" ]] ||
	   [[ `echo $fichero | cut -d"." -f2` == "SH" ]] ||
	   [[ `echo $fichero | cut -d"." -f2` == "sH" ]]
	then
	    fich=$(echo $fichero | cut -d"." -f1)
	    mv $fichero $fich
	    echo -e " [\e[1;32mOK\e[0m] - $fichero -> $fich"
	fi
    fi
done

echo