#!/bin/bash


## EJECUCIÓN ##
## ¿Hay representación de todos los cromosonas humanos en ambos los archivos?.
## Vemos las listas de los cromosomas, el nº de líneas es < 23. Vemos en esta
## que falta el par 19 y los sexuales.   
read -p "Inserte el nº de cromosomas de su especie: " nchr_esp ## Humanos
lookchr(){
    echo ">>> ¿Están todos los cromosomas en $1"
    echo ">> Cromosomas del archivo $1"
    cut -f1 $1 | sort -k1.4 -n | uniq
    echo ">> Nº de líneas de $1, si es < a $nchr_esp , faltan chr"
    cut -f1 $1 | sort -k1.4 -n | uniq | wc -l
}

read -p "Inserte la ruta de los datos crudos 1: " raw1
read -p "Inserta la ruta de los datos crudos 2: " raw2

lookchr $raw1
lookchr $raw2
