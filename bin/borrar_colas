#!/bin/bash

LPRM=$(which lprm 2> /dev/null)
LPSTAT=$(which lpstat 2> /dev/null)
COLS=$(tput cols)
LINES=$(tput lines)
IMPRESORAS=$(lpstat -a | cut -d" " -f1)
PARAM_COLA=$1
FECHAHORA=$(date '+%a, %d de %b de %Y - %H:%M:%S')

MaxLenght()
{
    MAXLENGHT=0
    TAMLINEA=0
    
    for i in $IMPRESORAS
    do
	TAMLINEA=$(echo -e $i | wc -L)
	if [ $TAMLINEA -gt $MAXLENGHT ]
	then
	    MAXLENGHT=$TAMLINEA
	fi
    done
}

Pintar_Cabecera()
{
    CENTROY=$(expr $COLS / 2 - 20)
    CONTADOR=0
    
    tput setab 0
    clear
    tput bold
    tput cup 1 0
    tput setaf 6
    echo -en " $FECHAHORA"
    tput setab 4
    tput setaf 7
    tput cup 0 $CENTROY
    echo -e "     ------------------------------     "
    tput cup 1 $CENTROY
    echo -e " -=[ Eliminar trabajos de impresión ]=- "
    tput cup 2 $CENTROY
    echo -e "     ------------------------------     \n\n"
    tput setab 0
    tput setaf 6
    tput cup 1 $(expr $COLS - 25)
    echo -e "Centro de Software Ibiza\n"
    tput setaf 7
    
    while [ $CONTADOR -lt $COLS ]
    do
	echo -en "-"
	#CONTADOR=$(expr $CONTADOR + 1)
	CONTADOR=$(($CONTADOR+1))
    done
}

Existe_Impresora()
{
    EXISTE_IMPRESORA="NO"
    
    if [ -n "$PARAM_COLA" ]
    then
	for i in $IMPRESORAS
	do
	    if [ "$i" == "$PARAM_COLA" ]
	    then
		EXISTE_IMPRESORA="SI"
		break
	    fi
	done
    
	if  [ "$EXISTE_IMPRESORA" == "NO" ]
	then
	    tput setaf 1
	    echo -e "\n *** La impresora '$PARAM_COLA' no existe ...\n\n"
	    tput setaf 7
	    exit
	fi
    fi
}

Estado_Impresoras()
{
    tput setaf 3
    echo -e '\n\n\n     /------------------------\'
    echo -e " -- < Estado de las impresoras > --"
    echo -e "     \------------------------/\n"
    if [ -n "$IMPRESORAS" ]
    then
	for i in $IMPRESORAS
	do
	    tput setaf 6
	    echo -en "    * $i ... "
	    tput setaf 5
	    TAM=$(echo $i | wc -L)
	    POSY=$(expr $MAXLENGHT - $TAM)
	    tput cuf $POSY
	    echo -e "\t- $(lpstat -a$i | cut -d" " -f2-3) -"
	done
    else
	tput setaf 1
	echo -en "       *** SIN IMPRESORAS *** "
	tput setaf 7
	return
    fi
}

Ejecutar()
{
    tput setaf 7
    echo -e "\n\n -- <Eliminando trabajos> ---------------- <Cola> ------------------\n"

    if [ -n "$LPRM" ] && [ -n "$LPSTAT" ]
    then
	if [ -n "$IMPRESORAS" ]
	then 
	    if [ -z $PARAM_COLA ]
	    then
		for i in $IMPRESORAS
		do
		    echo -en "    * Eliminando trabajos de la impresora: "
			tput smul
			tput setaf 15
			echo -en $i 
			tput rmul
			$LPRM -P$i -
			tput bold
			tput setaf 6
			echo -en " --> "
			tput setaf 2
			echo -e "(OK)"
			tput setaf 7
		done
	    else
		echo -en "    * Eliminando trabajos de la impresora: "
		tput smul
		tput setaf 15
		echo -en $PARAM_COLA 
		tput rmul
		$LPRM -P$PARAM_COLA -
		tput bold
		tput setaf 6
		echo -en " --> "
		tput setaf 2
		echo -e "(OK)"
		tput setaf 7
	    fi
	else
	    tput setaf 1
	    echo -en "\n     -ERROR- "
	    tput setaf 7
	    echo -e " * No existen impresoras creadas, o no se ha iniciado"
	    echo -e "                el servicio de impresión..."
	fi
    else
	tput setaf 1
        echo -en "\n     -ERROR- "
        tput setaf 7
        echo -e "Dependencias insatisfechas, no están instalados los"
        echo -e "             paquetes CUPS o LPD..."
    fi
    tput cup $LINES 0
}

MaxLenght
Existe_Impresora
Pintar_Cabecera
Estado_Impresoras
Ejecutar

exit
