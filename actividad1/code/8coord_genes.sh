#!/bin/bash

## VARIABLES ##
read -p "Ruta de Genome Browser: " genome_browser
read -p "Ruta para los genes: " genes
read -p "Ruta de los coordenadas y sus genes: " coordgenes

## EJECUCIÓN ##
## Copiamos los genes. Podría abrir un vim directamete en $genome_browser
## y añadir los genes tabulando. pero en caso de más genes y coordenadas 
## veo más práctico copiar una lista de los genes y pegarla a las coordenadas. 
vim $genes 
## Por lo visto tengo un problema con los saltos de línea ($), viendo con 
## cat -E genome_browser se ve lo siguiente:
## $hr1:204073115-204127743
## $hr6:31164337-31170682  
## chr17:42313412-42388540$
## Con sed y el uso de esta expresión regular logro solucionar el problema. Se
## podría usar dos2unix como vimos en clase también.
sed -r 's/\r$//' -i $genome_browser # ahora $ están todos al final

## Juntamos $genome_browser y $genes finalmente
paste $genome_browser $genes > $coordgenes
echo ">>> Cromosomas, cooordenadas y los genes"
cat $coordgenes
## Podemos asegurarnos del todo con cat -T, ^I muestra las tabulaciones.
echo ">>> Miramos los lugares en concreto donde hay tabulador:"
cat -T $coordgenes

