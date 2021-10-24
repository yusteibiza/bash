#!/bin/bash
clear
echo -e "-Información del equipo: $HOSTNAME\\n" 
inxi -b
#echo -e "\n"
neofetch
read -p "-Pulse intro para cerrar..."

