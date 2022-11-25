#!/bin/bash

## Usaré ambas réblicas de SRR1984406 

## EJECUCIÓN ##
## Usamos grep -o, por que da una lista de las repeticiones, y 
## entiendo que si da la casualidad de que repite más de una ve
## en una línea también lo reporta
echo ">>> Vemos las repeticiones de ATGATG en $1"
grep -o "ATGATG" $1 | wc -l
echo ">>> Vemos las repeticiones de ATGATG en $2"
grep -o "ATGATG" $2 | wc -l 
## También se podría usar:
# grep -o "ATGATG" file | uniq -c
