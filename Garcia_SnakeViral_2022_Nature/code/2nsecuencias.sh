#!/bin/bash

## En mi caso $1 es la primera réplica de SRR1984406

## Como en un archivo .fastq una secuencia se toma cada cuatro
## líneas, habrá que dividir el número total de filas entre 4
echo ">>> Número de secuencias del formato .fastq"
num_linea=$(echo $(awk {'print NR'} $1 | tail -1))
echo $((num_linea/4))
