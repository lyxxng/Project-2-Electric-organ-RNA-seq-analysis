#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=cutadapt1
#SBATCH	--time=12:00:00
#SBATCH --cpus-per-task=8
#SBATCH --mail-user=lxy@uoregon.edu
#SBATCH --mail-type=ALL

R1_IN="fasterq_out/SRR25630373_1.fastq.gz"
R2_IN="fasterq_out/SRR25630373_2.fastq.gz"

R1_OUT="cutadapt/SRR25630373_1.fastq.gz"
R2_OUT="cutadapt/SRR25630373_2.fastq.gz"

/usr/bin/time -v pixi run cutadapt -j 8 -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT -o $R1_OUT -p $R2_OUT $R1_IN $R2_IN