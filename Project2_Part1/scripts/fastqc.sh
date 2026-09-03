#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=fastqc
#SBATCH	--time=12:00:00

/usr/bin/time -v pixi run fastqc fasterq_out/SRR* -o fastqc_out
