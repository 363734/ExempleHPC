#!/bin/bash
# Submission script for Lemaitre4
#SBATCH --job-name=test
#SBATCH --array=1-10
#SBATCH --time=00:10:00 # hh:mm:ss
#
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=1000 # megabytes
#SBATCH --partition=batch
#
#SBATCH --mail-user=helene.verhaeghe27+cism@gmail.com
#SBATCH --mail-type=ALL

module load Python/3.11.3-GCCcore-12.3.0
module load virtualenv


source venv/bin/activate
srun python hello.py $SLURM_ARRAY_TASK_ID