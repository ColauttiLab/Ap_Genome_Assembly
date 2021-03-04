#! /bin/bash
#SBATCH --mem=200G
#SBATCH -t 14-00:00:00
#SBATCH -c 24

module load redundans

redundans.py -v -i ~/ShortReadData/Alliaria/*.fastq.gz \
-f ~/AssemblyAp/allpathsAp/Alliaria/ApGenome1.2.fasta \
-t $SLURM_JOB_CPUS_PER_NODE -o redundans1 \
--identity 0.9 --iters 5 --joins 5 --limit 1 --linkratio 0.7 --mapq 10 --minLength 1000 --overlap 0.75

