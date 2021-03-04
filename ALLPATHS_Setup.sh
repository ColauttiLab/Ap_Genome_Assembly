#! /bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -q abaqus.q
#$ -l qname=abaqus.q
#$ -M hpc3183@localhost
#$ -m e
#$ -o setup.out
#$ -e setup.err

## RUNTIME ~ 10hrs

mkdir -p ./notes
mkdir -p ~/assemblies/allpathsLs/Lythrum/fulldata

use allpaths-lg

PrepareAllPathsInputs.pl   \
DATA_DIR=~/allpathsLs/Lythrum/fulldata   \
PICARD_TOOLS_DIR=/opt/picardtools/2.0.1/    \
PLOIDY=2 OVERWRITE=False

cp setup.* ./notes
