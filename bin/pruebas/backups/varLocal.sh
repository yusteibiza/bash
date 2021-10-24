#!/bin/bash

function hola {
    local HOLA=Mundo
    echo $HOLA
}

HOLA=Hola
echo $HOLA
hola
echo $HOLA