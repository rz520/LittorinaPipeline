#Use angsd realSFS function to calculate crab-hybrid joint 2d folded sfs

#!/bin/bash
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=8:mem=60gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
tem=/rds/general/user/rz520/ephemeral/project

module load anaconda3/personal
realSFS=/rds/general/user/rz520/home/workshop/Software/angsd/misc/realSFS


echo "crab hybrid"
$realSFS $tem/crab.saf.idx $tem/hybrid.saf.idx -fold 1 > $BASEDIR/results/crab.hybrid.folded.sfs

echo "finish"
