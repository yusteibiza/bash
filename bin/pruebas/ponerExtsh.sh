#!/bin/bash
# Pone la extensión .sh a los archivos que no tengan extensión #

echo

for fichero in *
do
    if [ -f $fichero ]
    then
	if [ ! $( echo $fichero | rev | cut -d"." -f1 | rev) == "sh" ] ||
	   [ ! $( echo $fichero | rev | cut -d"." -f1 | rev) == "Sh" ] ||
	   [ ! $( echo $fichero | rev | cut -d"." -f1 | rev) == "SH" ] ||
	   [ ! $( echo $fichero | rev | cut -d"." -f1 | rev) == "sH" ]
	then
	    mv "$fichero" "$fichero.sh"
	    echo -e " [\e[1;32mOK\e[0m] - $fichero -> $fichero.sh"
	fi
    fi
done

echo