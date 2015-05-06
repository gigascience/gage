#!/bin/bash
K=31
P=16

ln -s ../../Data/allpathsCor/*fastq .

SOAPdenovo all -K $K -p $P -s SOAPdenovo.config -o genome
GapCloser -a genome.scafSeq -b SOAPdenovo.config -o genome.scf.fasta -p $K -t $P
scf2ctg.pl < genome.scf.fasta > genome.ctg.fasta
