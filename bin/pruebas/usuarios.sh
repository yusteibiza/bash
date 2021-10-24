#!/bin/bash
echo;echo
usuarios=`who | cut -d" " -f1 | paste -d", " -s`
echo -e "Usuarios conectados .: $usuarios\n"
