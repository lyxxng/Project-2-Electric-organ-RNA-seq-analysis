#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=fasterq1
#SBATCH --time=12:00:00

/usr/bin/time -v fasterq-dump SRR25630373 --outdir fasterq_out
