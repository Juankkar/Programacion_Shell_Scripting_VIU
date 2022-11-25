#!/bin/bash

## En mi caso los datos son las réplicas de  SRR1984406
## en formato fastq

## EJECUCIÓN ##
echo ">>> Vemos el número de líneas de cada archivo"
wc -l $1 $2 | head -2
