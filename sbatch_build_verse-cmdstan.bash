#!/bin/bash
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --mem=16G
#SBATCH -t 04:00:00
#SBATCH -p fasse
#SBATCH -J singbuild
# Outputs ----------------------------------
#SBATCH -o %A_%a-%x.out

singularity build verse-cmdstan-$1.simg docker://jflournoy/verse-cmdstan:$1
