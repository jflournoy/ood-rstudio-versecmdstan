#!/bin/bash
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=16G
#SBATCH -t 04:00:00
#SBATCH -p fasse
#SBATCH -J build
#SBATCH --account=mclaughlin_lab
# Outputs ----------------------------------
#SBATCH -o /n/home_fasse/jflournoy/data/containers/log/%A_%a-%x.out

srun -c 1 singularity build --sandbox verse-cmdstan-$1.simg docker://jflournoy/verse-cmdstan:$1
