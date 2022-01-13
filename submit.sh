#!/bin/bash
#
#SBATCH --job-name singularity_e3sm_test
#SBATCH --account=cjablono1
#SBATCH --nodes=3
#SBATCH --ntasks-per-node=36
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=0:05:00
#SBATCH --container=/home/owhughes/containers/singularity/e3sm.sif
#
# 25 nodes, 30min sufficient for all 5 runs
# 12 nodes, 10min for r400 an r100
# 




export PATH="/scratch/cjablono_root/cjablono1/owhughes/dependencies/mpich/bin:$PATH"

srun singularity exec /home/owhughes/containers/singularity/e3sm.sif "./case.submit"
