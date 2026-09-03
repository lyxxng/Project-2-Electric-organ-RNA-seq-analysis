#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=build_db
#SBATCH --time=12:00:00

DIR=/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Campylomormyrus_compressirostris.STAR_2.7.11b
FASTA=/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Cco/campylomormyrus.fasta
GTF=/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Cco/campylomormyrus.gtf

/usr/bin/time -v pixi run STAR --runThreadN 8 --runMode genomeGenerate --genomeDir $DIR --genomeFastaFiles $FASTA --sjdbGTFfile $GTF