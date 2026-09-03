#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=fasterq2
#SBATCH --time=12:00:00

/usr/bin/time -v fasterq-dump SRR25630374 --outdir fasterq_out
