#!/bin/bash
#SBATCH	--account=bgmp
#SBATCH	--partition=bgmp
#SBATCH	--job-name=prefetch
#SBATCH	--time=12:00:00

/usr/bin/time -v prefetch SRR25630373 --max-size 420000000000
/usr/bin/time -v prefetch SRR25630374 --max-size 420000000000
