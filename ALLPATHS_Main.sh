#! /bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -q abaqus.q
#$ -l qname=abaqus.q
#$ -pe shm.pe 48
#$ -M hpc3183@localhost
#$ -m e
#$ -o allpaths1.2.out
#$ -e allpaths1.2.err

use allpaths-lg

RunAllPathsLG \
PRE=/u1/work/hpc3183/ColauttiLab/assemblies/allpathsLs/ \
REFERENCE_NAME=Lythrum \
DATA_SUBDIR=fulldata \
RUN=run1.3    \
OVERWRITE=True \
THREADS=$NSLOTS  \
CLOSE_UNIPATH_GAPS=True

cp allpaths.* ./notes
