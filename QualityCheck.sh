#!/bin/bash
#SBATCH -c 1
#SBATCH --mem 4G

module load picard

java -jar $EBROOTPICARD/picard.jar FastqToSam \
FASTQ=MiSeqF.fq \
FASTQ2=MiSeqR.fq \
OUTPUT=MiSeq.bam \
SAMPLE_NAME=Ap_euEFCC3_20

java -jar $EBROOTPICARD/picard.jar  QualityScoreDistribution \
INPUT=MiSeq.bam \
OUTPUT=q_score_dist.txt \
CHART=q_score_dist.pdf

