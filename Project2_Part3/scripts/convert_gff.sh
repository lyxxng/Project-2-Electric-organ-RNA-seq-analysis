#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --job-name=convert_gff
#SBATCH --time=12:00:00
#SBATCH --mem=100G

GFF="/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Cco/campylomormyrus.gff"
GTF="/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Cco/campylomormyrus.gtf"

/usr/bin/time -v pixi run agat_convert_sp_gff2gtf.pl --gff $GFF -o $GTF