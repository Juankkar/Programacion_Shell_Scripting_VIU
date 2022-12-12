#!/bin/bash
ruta=../data/processed
all_fasta=../data/processed/all_sequences.fasta

grep -Fw ">SRR1984406.2835 2835 length=134" -A 1 $all_fasta > $ruta/secuencia1.fasta
grep -Fw ">SRR1984406.5955 5955 length=134" -A 1 $all_fasta > $ruta/secuencia2.fasta
grep -Fw ">SRR1984406.1377 1377 length=134" -A 1 $all_fasta > $ruta/secuencia3.fasta
grep -Fw ">SRR1984406.2911 2911 length=135" -A 1 $all_fasta > $ruta/secuencia4.fasta
grep -Fw ">SRR1984406.4139 4139 length=134" -A 1 $all_fasta > $ruta/secuencia5.fasta
