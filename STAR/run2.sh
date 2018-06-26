#!/bin/bash

#PBS -l select=1:ncpus=40:mpiprocs=40
#PBS -N mpijob
#PBS -j oe
#PBS -P TRI107742
#PBS -q cf40

module load intel/2018_u1

 ./STAR --genomeDir /work1/evenove134/evenove134/res  --readFilesIn /work1/evenove134/evenove134/data_dsec/SRR1952776_1.fastq /work1/evenove134/evenove134/data_dsec/SRR1952776_2.fastq --outFileNamePrefix "/work1/evenove134/evenove134/count_dsec_2776" --quantMode TranscriptomeSAM GeneCounts

