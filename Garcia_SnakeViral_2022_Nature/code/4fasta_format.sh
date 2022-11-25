#!/bin/bash

## Usaré la primera réplica de SRR1984406 

## VARIABLES ##
## Yo abajo ../data/processed/all_sequences.fasta 
read -p "Almacenar todas las secuencias fasta: " fasta 

## EJECUCIÓN ##
## Convertimos el formato fastq a fasta, para ello usamos sed. La
## idea primero es sustituir las "@" cada cuatro líneas por ">"
## y luego seleccionar únicamente la primea y la segunda (encabezado
## y seceuncia), así cada cuatro líneas a su vez. 
sed -n '1~4s/^@/>/p;2~4p' $1 > $fasta
head -5 $fasta
