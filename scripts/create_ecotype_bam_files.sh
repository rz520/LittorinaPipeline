#Use individual ecotype data to create bam files path list in every ecotype 

#!/bin/bash
#PBS -l walltime=02:00:00
#PBS -l select=1:ncpus=5:mem=40gb

echo "start"
DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project

while read line
do
grep  $line $BASEDIR/data/ALL_bams.txt >> $BASEDIR/data/crab_bams.txt
done < $BASEDIR/data/crab.txt

while read line
do
grep  $line $BASEDIR/data/ALL_bams.txt >> $BASEDIR/data/wave_bams.txt
done < $BASEDIR/data/wave.txt

while read line
do
grep  $line $BASEDIR/data/ALL_bams.txt >> $BASEDIR/data/hybrid_bams.txt
done < $BASEDIR/data/hybrid.txt

echo "finish"
