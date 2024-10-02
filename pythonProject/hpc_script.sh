#!/bin/bash
# Submission script for Lemaitre4
#SBATCH --job-name=test
#SBATCH --output=log_test.txt
#SBATCH --array=1-10
#SBATCH --time=00:10:00 # hh:mm:ss
#
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=1000 # megabytes
#SBATCH --partition=batch
#
#SBATCH --mail-user=helene.verhaeghe27+cism@gmail.com
#SBATCH --mail-type=ALL

source venv/bin/activate
srun python hello.py $SLURM_ARRAY_TASK_ID