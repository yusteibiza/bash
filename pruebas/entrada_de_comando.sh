#!/bin/bash

########################################
# Script que demuestra las dos maneras #
# de hacer una entrada a una variable. #
########################################

KERNEL=`uname -r`
echo -e '\n Una es como siempre con `comando`, ejemplo...'
echo -e "\n Kernel:" `uname -r`
echo -e " Kernel: $KERNEL\n\n"
echo ' Otra manera es $(comando), ejemplo...'
echo -e "\n Kernel: $(uname -r)\n"

