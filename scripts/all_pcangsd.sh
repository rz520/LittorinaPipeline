#Use PCAngsd to estimate genetic covariance matrix with genotype likelihood data inferred by angsd

#!/bin/bash
#PBS -l walltime=24:00:00
#PBS -l select=1:ncpus=5:mem=20gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
module load anaconda3/personal
pcangsd=/rds/general/user/rz520/home/workshop/Software/pcangsd/pcangsd.py

echo "pcangsd starts to run"

python $pcangsd -beagle $BASEDIR/results/ALL_ANGSD_PCA_new.beagle.gz -minMaf 0.01 -threads 4 -o $BASEDIR/results/ALL_PCANGSD_PCA -pi_save -post_save -sites_save

echo "finish"


