#!/bin/bash

## VARIABLES ##
read -p "Inserte la ruta de las diferencias: " diff
read -p "Inserte la ruta del archivo temporal: " temporary_file 

## EJECUCIÓN ##
## Filtramos los valores que nos interesa. Un truco que 
## podemos hacer es crear un archivo temporal y el resultado 
## procesado de las diferencias sobrescribirlo con mv en
## archivo $diff original. Evitamos excesivos archivos.
grep "> chr" $diff > $temporary_file
mv $temporary_file $diff

## Eliminamos los valores "> " que estorban
## Con sed -i modificamos automáticamente los datos de las
## diferencias procesadas, a partir de los patrones y reemp_
## plazos establecidos.
sed -i "s/> chr/chr/" $diff 

echo ">>> Vemos las diferencias procesadas"
cat $diff

