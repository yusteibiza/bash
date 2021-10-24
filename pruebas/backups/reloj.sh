#!/bin/bash
clear

POSPARAM=$1
TIPOFECHA=$2
COLUMNAS=`tput cols`
LINEAS=`tput lines`
POSX=
POSY=

case $POSPARAM in
    arriba_izquierda)
    POSX=0
    POSY=0
    ;;
    arriba_derecha)
    POSX=0
    POSY=`expr $COLUMNAS - 20`
    ;;
    abajo_derecha)
    POSX=$LINEAS
    POSY=`expr $COLUMNAS - 20`
    ;;
    abajo_izquierda)
    POSX=$LINEAS
    POSY=0
    ;;
    *)
    POSX=0
    POSY=`expr $COLUMNAS - 20`
    ;;
esac

while :
do
    if [[ ! -z $POSPARAM ]]
    then
	if [ "$TIPOFECHA" == "corta" ]
	then
	    FECHA_HORA=`date +"%d/%m/%Y, %H:%M:%S"`
	elif [ "$TIPOFECHA" == "larga" ]
	then
	    FECHA_HORA=`date +"%A, %d de %B de %Y"`
	fi
    else
	FECHA_HORA=`date +"%d/%m/%Y, %H:%M:%S"`
    fi
    tput bold
    tput sc
    tput cup $POSX $POSY
    tput bold
    tput setaf 7
    tput setab 2
    echo -en "$FECHA_HORA"
    tput rc
    tput sgr0
    sleep 1
done
