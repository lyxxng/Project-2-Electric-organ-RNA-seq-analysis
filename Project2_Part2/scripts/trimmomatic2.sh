#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=trimmomatic2
#SBATCH	--time=12:00:00
#SBATCH --cpus-per-task=8
#SBATCH --mail-user=lxy@uoregon.edu
#SBATCH --mail-type=ALL

R1_IN="cutadapt/SRR25630374_1.fastq.gz"
R2_IN="cutadapt/SRR25630374_2.fastq.gz"

R1_P="trimmomatic/SRR25630374_1_paired.fastq.gz"
R1_UP="trimmomatic/SRR25630374_1_unpaired.fastq.gz"
R2_P="trimmomatic/SRR25630374_2_paired.fastq.gz"
R2_UP="trimmomatic/SRR25630374_2_unpaired.fastq.gz"


/usr/bin/time -v pixi run trimmomatic PE -threads 8 $R1_IN $R2_IN $R1_P $R1_UP $R2_P $R2_UP LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35