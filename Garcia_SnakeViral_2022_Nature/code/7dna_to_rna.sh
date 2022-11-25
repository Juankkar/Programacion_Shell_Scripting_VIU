#!/bin/bash

## VARIABLES ##
## Secuencias a usar: de la 1 a la 5
seq1=$1;seq2=$2;seq3=$3;seq4=$4;seq5=$5
read -p "Almacenar las secuencias de rna: " secuencia_rna

## EJECUCIÓN ##
## Usamos un cat para mostrar las 5 secuencias (geader y secuencia) 
## y acto seguido usaremos sed para sustituir cada 2 líneas, empezando
## por la segunda (las secuencias), las Timinas por Uracilo.
cat $seq{1..5} | sed '2~2s/T/U/g' > $secuencia_rna 

## Ahora lo que vamos a hacer es contar la aparición de cada una 
## de las bases nitrogenadas. La idea es primero filtrar el encabezado
## y se printe primero, y luego crear una lista de los nucleótidos con
## cada uno de los recuentos printandose después. El bucle nos permite
## hacer esto línea por línea con nuestros datos de las secuencias de
## rna, habiéndose de alimentar al bucle. 
while read linea
do
echo $linea | grep '>' 
echo $linea | grep -v '>' | grep -o "[ACGU]" | sort | uniq -c
done < $secuencia_rna
