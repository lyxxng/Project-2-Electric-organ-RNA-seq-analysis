#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --job-name=align_reads_0373
#SBATCH --time=12:00:00

DIR=/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Campylomormyrus_compressirostris.STAR_2.7.11b
R1=/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part2/trimmomatic/SRR25630373_1_paired.fastq.gz
R2=/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_Part2/trimmomatic/SRR25630373_2_paired.fastq.gz
PREFIX=/projects/bgmp/lxy/bioinfo/Bi623/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/alignment_0373

/usr/bin/time -v pixi run STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn $R1 $R2 \
--genomeDir $DIR \
--outFileNamePrefix $PREFIX