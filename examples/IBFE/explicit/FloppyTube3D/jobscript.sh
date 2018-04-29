#!/bin/bash
#MSUB -A p30516
#MSUB -q long
#MSUB -l walltime=10:00:00
#MSUB -M yanshang0517@gmail.com
#MSUB -m abe
#MSUB -j oe
#MSUB -N projectname_floppytube
#MSUB -l procs=24

# add a project directory to your PATH (if needed)
#export PATH=$PATH:/projects/p20XXX/tools/

# load modules you need to use
module load mpi/openmpi-1.10.5-gcc-4.8.3

# Set your working directory
cd $PBS_O_WORKDIR

# A command you actually want to execute:
mpirun -np 24 ./main3D input3d