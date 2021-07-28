#Use angsd realSFS function to calculate fst value of every SNP with saf files and 2d sfs as input 

#!/bin/bash
#PBS -l walltime=05:00:00
#PBS -l select=1:ncpus=4:mem=20gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
tem=/rds/general/user/rz520/ephemeral/project

module load anaconda3/personal
realSFS=/rds/general/user/rz520/home/workshop/Software/angsd/misc/realSFS

echo "starts to run"
$realSFS fst index $tem/crab.saf.idx $tem/hybrid.saf.idx $tem/wave.saf.idx -sfs $tem/crab.hybrid.folded.sfs -sfs $tem/crab.wave.folded.sfs -sfs $tem/hybrid.wave.folded.sfs -fstout $BASEDIR/results/wave_fold_1.pbs -whichFst 1 -fold 1
$realSFS fst print $BASEDIR/results/wave_fold_1.pbs.fst.idx > $BASEDIR/results/wave_fold_1.pbs.fst

echo "finished running"


