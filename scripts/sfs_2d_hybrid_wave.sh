#Use angsd realSFS function to calculate hybrid-wave joint 2d folded sfs

#!/bin/bash
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=8:mem=96gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project

module load anaconda3/personal
realSFS=/rds/general/user/rz520/home/workshop/Software/angsd/misc/realSFS
tem=/rds/general/user/rz520/ephemeral/project

echo "wave hybrid"
$realSFS $tem/hybrid.saf.idx $tem/wave.saf.idx -fold 1 > $tem/hybrid.wave.folded.sfs

echo "finish"
