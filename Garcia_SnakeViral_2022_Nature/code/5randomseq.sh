#!/bin/bash

## VARIABLES ##
fasta=$1 # all_sequences.fasta en los datos procesados
header_seq_array=($2 $3 $4 $5 $6) # las 5 secuencias a crear
## Lo siguiente una variable para un encabezado arleatorio:
read -p "Almacenar el encabezado arleatorio: " random_header

## EJECUCIÓN ##
## Hacemos el siguiente bucle for para crear cada uno de los archivos. 
## En sí, la primera parte seleciona un header arleatorio, y la segunda parte,
## apartir de ese valor, seleciona también la siguiente línea (su secuencia)
## y omite las demás, así hasta las 5 seq.

for HEADER_SEQ in ${header_seq_array[*]}
do
   grep '^>' $fasta | shuf -n 1 > $random_header
   grep -Fwf $random_header -A 1 $fasta | grep -v '^--$' > $HEADER_SEQ
done
rm $random_header
