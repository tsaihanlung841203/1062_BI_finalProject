#!/bin/bash

#PBS -l select=2:ncpus=40:mpiprocs=40
#PBS -N mpijob
#PBS -j oe
#PBS -P TRI107742
#PBS -q ctest

module load intel/2018_u1

 ./STAR --genomeDir /work1/evenove134/evenove134//res_dsim --runMode genomeGenerate --genomeFastaFiles /work1/evenove134/evenove134/data_dism/dsim-all-chromosome-r2.02.fasta --sjdbGTFfile /work1/evenove134/evenove134/data_dism/dsim-all-r2.02.gtf --genomeChrBinNbits 15

