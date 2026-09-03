#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=gzip2
#SBATCH --time=12:00:00

/usr/bin/time -v gzip ../fasterq_out/SRR25630374_1.fastq ../fasterq_out/SRR25630374_2.fastq
