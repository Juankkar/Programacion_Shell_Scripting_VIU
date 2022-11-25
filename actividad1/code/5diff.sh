#!/bin/bash

## $1 y $2 datos crudos human coordinates ../data/raw/

## VARIABLES ##
read -p "Inserte la ruta de los datos ordenados 1: " sort1
read -p "Inserte la ruta de los datos ordenados 2: " sort2
read -p "Inserte la ruta de las diferencias: " diff

## EJECUCIÓN ##
## Ordenamos los datos crudos de menor a mayor, cromosomas (nº) y coordenadas.
echo ">>> Ordenamos ambos datos y guardamos los resultados en un nuevo archivo"
sort -k1.4 -k 2 -n $1 > $sort1
sort -k1.4 -k 2 -n $2 > $sort2

echo ">>> En caso de diferencias ¿Cuántas y que regiones son diferentes?"
## Primero preguntamos si difieren
echo ">> ¿Difieren?"
diff $sort1 $sort2 -q
## Lo siguientes ya es ver cuáles presentan en ese caso diferencias, si no
## hay diferencias no habría ningún output.
echo ">> ¿Dónde?"
diff $sort1 $sort2 > $diff
cat $diff ## Ver las diferencias
## Eliminamos los datos ordenados para no ocupar excesivo espacio. En caso de
## fallo en los siguientes scripts, con volver a correr este se restaura lo
## importante!!!.
rm $sort1 $sort2
