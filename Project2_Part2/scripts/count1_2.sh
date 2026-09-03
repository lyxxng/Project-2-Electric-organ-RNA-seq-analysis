#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=count1_2
#SBATCH --time=12:00:00

FILE="/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part2/trimmomatic/SRR25630373_2_paired.fastq.gz"
OUT="/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part2/tsv/SRR25630373_2.tsv"

zcat $FILE | sed -n '2~4p' | awk '{print length($0)}' | sort -n | uniq -c > $OUT