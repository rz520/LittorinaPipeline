#Use angsd thetaStat function to estimate theta which represents population scaled mutation rate and nucleotide diversity 

#!/bin/bash
#PBS -l walltime=24:00:00
#PBS -l select=1:ncpus=4:mem=20gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
tem=/rds/general/user/rz520/ephemeral/project

module load anaconda3/personal
realSFS=/rds/general/user/rz520/home/workshop/Software/angsd/misc/realSFS
thetaStat=/rds/general/user/rz520/home/workshop/Software/angsd/misc/thetaStat


echo "starts to run"
echo "crab"
$realSFS saf2theta $tem/crab.saf.idx -sfs $tem/crab.folded.sfs -outname $tem/crab
$thetaStat print $tem/crab.thetas.idx > $tem/crab.thetas
$thetaStat do_stat $tem/crab.thetas.idx -win 50000 -step 10000 -outnames $tem/crab_theta.thetasWindow

echo "hybrid"
$realSFS saf2theta $tem/hybrid.saf.idx -sfs $tem/hybrid.folded.sfs -outname $tem/hybrid
$thetaStat print $tem/hybrid.thetas.idx > $tem/hybrid.thetas
$thetaStat do_stat $tem/hybrid.thetas.idx -win 50000 -step 10000 -outnames $tem/hybrid_theta.thetasWindow

echo "wave"
$realSFS saf2theta $tem/wave.saf.idx -sfs $tem/wave.folded.sfs -outname $tem/wave
$thetaStat print $tem/wave.thetas.idx > $tem/wave.thetas
$thetaStat do_stat $tem/wave.thetas.idx -win 50000 -step 10000 -outnames $tem/wave_theta.thetasWindow

echo "finish"
