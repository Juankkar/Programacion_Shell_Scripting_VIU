#!/bin/bash

## $1 y $2 representan human coordinates de ../data/raw/
## EJECUCIÓN ##
## Usamos awk, donde NF es el number of fields
echo "Vemos el número de columnas de $1"
awk -F "\t" '{print NF}' $1 | uniq

echo "Vemos el número de columnas de $2"
awk -F "\t" '{print NF}' $2 | uniq 
