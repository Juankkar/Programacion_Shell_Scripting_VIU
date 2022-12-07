# **Actividad 2 de la asignatura de Programación Shell Scripting** 

## **Máster en Bioinformática Valencia Internacional University (VIU)** 

### ***Manipulación y formateo de archivos: Formato FASTQ y FASTA.***

### **Credenciales del ator**

* Autor: Juan Carlos García Estupiñán
* Año: 2022-2023
* Publicación: Nature

El propósito de esta actividad es desarrollar un flujo de trabajo completo (denominado en inglés pipeline) bioinformático que nos permita procesar una serie de datos biológicos. Con esta actividad, se pretende que el estudiante adquiera destrezas para interactuar con el sistema operativo a través de la línea de comandos y que sea capaz de desarrollar Shell scripts propios para resolver diferentes retos bioinformáticos focalizados en dos tipos de formato de texto, el formato FASTQ y en formato FASTA.

### **Directorios**

### [analysis](analysis)

* Directorio que contiene los análisis. 

### [code](code)

* scripts con el código usado usado: está formado por un total de 7 scripts para cada uno de los apartados.
    * [1nrow.sh](code/1nrow.sh): número de líneas de ambas réplicas de SRR1984406.
    * [2nsecuencias.sh](code/2nsecuencias.sh): número de secuencias que presenta la réplica 1.
    * [3seq_identificar.sh](code/3seq_indentificar.sh): identificar el número de ocurrencias de la secuencia "ATGATG" en ambas réplicas.
    * [4fasta_format.sh](code/4fasta_format.sh): pasar la réplica 1 de formato .fastq a fasta, llamándola all_sequences.fasta.
    * [5randomeseq.sh](code/5randomseq.sh): escoger al azar 5 secuencias y llamarlas secuencia1.fasta, secuencia2.fasta...
    * [6seq1.sh](code/6seq1.sh): Comprobar con una de las 5 secuencias elegidas (secuencia1.fasta), si se trata de secuencias de nucleótidos, o aminoácidos.
    * [7dna_to_rna.sh](code/7dna_to_rna.sh): pasar las 5 secuencias de DNA a RNA y hacer un recuento de cada una de las bases.

### [data](data)

* Datos usados en el análisis:

    *  [raw](data/raw/): se encuentran los datos crudos de con dos réplicas de SRR1984406.
    * [processed](data/processed/): se trata de los datos procesados que hemos ido obteniendo con el desarrollo de los análisis. Una cosa importante es que en caso de repetir el estudio, este apartado cambiará ya que el script para de obtener las 5 secuencias fasta es arleatorio (pero en esencia es lo mismo a pesar de otras secuencias seleccionadas). En ese sentido, puede ser que las secuencias de la memoria sean distintas a las que se encuentran en este directorio, dependiendo si se ha corrido de nuevo el script.
    
En caso de que no se encuerntren las mismas secuencias de la memoria por esto anterior, se puede crear este script y sustituirlo por ```5randomseq.sh``` (lo he añadido en code como ```resultado_memoria.sh``, después de haber entregado la memoria, con lo que no figura, pero por motivos obvios me ha parecido bien hacer esta modificación).

```
#!/bin/bash
ruta=../data/processed
all_fasta=../data/processed/all_sequences.fasta

grep ">SRR1984406.2835 2835 length=134" -A 1 $all_fasta > $ruta/secuencia1.fasta
grep ">SRR1984406.5955 5955 length=134" -A 1 $all_fasta > $ruta/secuencia2.fasta
grep ">SRR1984406.1377 1377 length=134" -A 1 $all_fasta > $ruta/secuencia3.fasta
grep ">SRR1984406.2911 2911 length=135" -A 1 $all_fasta > $ruta/secuencia4.fasta
grep ">SRR1984406.4139 4139 length=134" -A 1 $all_fasta > $ruta/secuencia5.fasta

```

### [submissions](submmissions)

* Donde guardamos la memoria de nuestro análisis  publicar.
    * [version1](submission/version1/): guardamos el documento con los resultados en markdown.
    * [version2](submission/version2/): guardamos el documento con los resultados final, pasado a pdf.

### [tools](tools)

* Herramienta usada [sratoolkit](https://github.com/ncbi/sra-tools/wiki/02.-Installing-SRA-Toolkit), para obtener los datos.







