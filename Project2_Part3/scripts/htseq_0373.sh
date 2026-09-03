#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=htseq_0373
#SBATCH --cpus-per-task=8
#SBATCH --time=12:00:00

SAM="/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/0373_Aligned.out.sam"
GFF="/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Cco/campylomormyrus.gff"

/usr/bin/time -v pixi run htseq-count --stranded=yes -i Parent $SAM $GFF > htseq_count_0373_stranded.txt
/usr/bin/time -v pixi run htseq-count --stranded=reverse -i Parent $SAM $GFF > htseq_count_0373_reverse.txt