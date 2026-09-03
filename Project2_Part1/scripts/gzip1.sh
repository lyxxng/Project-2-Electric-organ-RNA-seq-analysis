#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=gzip1
#SBATCH	--time=12:00:00

/usr/bin/time -v gzip ../fasterq_out/SRR25630373_1.fastq ../fasterq_out/SRR25630373_2.fastq
