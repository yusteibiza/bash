#!/bin/bash

lista=("hola" "como estás" "yo bien")
a_comprobar=("como estás" "blabla" "hola")

declare -A indices
for key in "${!lista[@]}"
do 
  indices[${lista[$key]}]="$key"
done

for nombre in "${a_comprobar[@]}"
do
   if [[ -n "${indices[$nombre]}" ]]; then
      echo "-$nombre- SÍ está en el array"
   else
      echo "-$nombre- NO está en el array"
   fi
done
