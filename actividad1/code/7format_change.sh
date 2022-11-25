#/bin/bash

## VARIABLES ##
read -p "Inserte la ruta de las diferencias: " diff
## Formato para buscar en el Genenome Browser:
read -p "Ruta para archivo de Genome Browser: " genome_browser

## EJECUCIÓN ##
## Cambiamos el formato anterior
awk '{print $1 ":"  $2 "-" $NF }' $diff > $genome_browser  

echo ">>> Visualizamos los datos que usaremos en Genome Browser:"
cat $genome_browser
## Eliminamos las diferencias:
rm $diff
