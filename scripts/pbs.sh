#Use angsd realSFS function calculate window pbs value of every ecotype

#!/bin/bash
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=5:mem=40gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
realSFS=/rds/general/user/rz520/home/workshop/Software/angsd/misc/realSFS


echo "realSFS start"
$realSFS fst stats2 $BASEDIR/results/wave_fold_1.pbs.fst.idx -win 10000 -step 1000 > $BASEDIR/results/wave_fold_1.pbs.fst.txt

echo "finish"


