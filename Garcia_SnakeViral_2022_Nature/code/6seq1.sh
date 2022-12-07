#!/bin/bash

## VARIABLES ##
## Elegir una de las cinco secuencias
read -p "Escoja alguna de sus secuencias: " secuencia_elegida
## Archivo que contiene una lista con la información de la secuencia
read -p "Acrhivo que contiene el tipo de secuencia: " tipo_seq

secuencia=$(grep -v '>' $secuencia_elegida)
## Hacemos el segiente bucle con el condicional dentro. Crea una lista
## de las bases nitrogenadas según una condición
for (( i=0; i<${#secuencia}; i++ ))
do
    ## La condición dice que si están una letra u otra, que coincida
    ## con un nucleótido, dirá posible nucleótido (N por pérdidas)
    if [[ ${secuencia:$i:1} == A || ${secuencia:$i:1} == G ||
          ${secuencia:$i:1} == T || ${secuencia:$i:1} == C ||
          ${secuencia:$i:1} == N ]]
    then 
        echo "Posible nucleótido" 
    else
        echo "Letra de aminoácido"
    fi
done > $tipo_seq
## Corroboramos con el siguiente condicional, si hay una línea
## Cabría esperar que se tratan de nucleótidos, si hay 2, habría
## otras letras además de estas que serían aminoácidos.
corroboracion=$(uniq $tipo_seq | wc -l)
if [ $corroboracion -eq 1 ]
then
    echo ">>> Se trata de una secuencia de nucleótidos"
elif [ $corroboracion -gt 1 ]
then
    echo ">>> Se trata de una secuencia de aminoácidos"
else
    "ERROR"
fi
rm $tipo_seq
