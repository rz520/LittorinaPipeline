#Use angsd realSFS function to calculate 1d folded sfs in crab

#!/bin/bash
#PBS -l walltime=05:00:00
#PBS -l select=1:ncpus=4:mem=40gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
tem=/rds/general/user/rz520/ephemeral/project

module load anaconda3/personal
realSFS=/rds/general/user/rz520/home/workshop/Software/angsd/misc/realSFS


echo "crab"
$realSFS $tem/crab_new.saf.idx -fold 1 > $tem/crab.folded.sfs

echo "finish"
