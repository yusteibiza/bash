#!/bin/bash

ORIGEN=$1
DESTINO=$2
#USUARIO=$3
#PASSWD=$4
CRED=$3
VERS=$4

if [ -z $ORIGEN ] || [ -z $DESTINO ] || [ -z $CRED ] || [ -z $VERS ]
then
    #echo -e "\n - Faltan parámetros...\n - Uso .: [origen] [destino] [usuario] [password] [version samba]\n"
    echo -e "\n - Faltan parámetros...\n - Uso .: [origen] [destino] [credenciales] [versión samba]"
    echo -e " - Ej. .: montared.sh //192.168.1.2/compartida /mnt/compartida /etc/credenciales 2.1\n"
else
    #mount -t cifs -o sec=ntlm,vers=3.0,username=AntonioYuste@puesto1,password=VivaLaVida08111976,iocharset=utf8,user,rw --verbose //puesto1/Datos_USB /yuste/media/puesto1/datos_usb
    #mount -t cifs $1 $2 -o sec=ntlmv21,username=$3,password=$4,vers=$5,iocharset=utf8,user,rw,file_mode=0777,dir_mode=0777 --verbose
    #mount -t cifs $1 $2 -o username=$3,password=$4,vers=$5,iocharset=utf8,user,rw,file_mode=0777,dir_mode=0777 --verbose
    mount -t cifs $ORIGEN $DESTINO -o credentials=$CRED,iocharset=utf8,file_mode=0777,dir_mode=0777,vers=$VERS
fi    
