#!/bin/bash

## $1 $2 representan human coordinates en ../data/raw/
## EJECUCIÓN ##
## Contamos las líneas de cada uno de los archivos
echo ">>> Número de líneas de $1"
cat -n $1 | wc -l 

## En el siguiente hay un problema con el salto de línea, con lo cual,
## usaremos otra combinación de comandos.
## Vemos la enumeración de las líneas | la última fila | el número de esta
echo ">>> Número de líneas de $2"
cat -n $2  | tail -1  | cut -f1
