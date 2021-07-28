#Use angsd to estimate genotype likelihood with bam files and then calculate genetic covariance matrix

#!/bin/bash
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=5:mem=40gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
REF=$DIR/Ref.fa
module load anaconda3/personal
angsd=/rds/general/user/rz520/home/workshop/Software/angsd/angsd

echo "angsd starts to run"
$angsd -b $DIR/ALL_bams.txt -ref $REF -anc $REF -out $BASEDIR/results/ALL_ANGSD_PCA \
-uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 \
-minMapQ 20 -minQ 20 -minInd 35 -setMinDepth 70 -setMaxDepth 350 \
-GL 1 -doGlf 2 -doMajorMinor 1 -doPost 1 -doMaf 1 -minMaf 0.01 -SNP_pval 1e-4 \
-doIBS 1 -makeMatrix 1 -doCounts 1 -doCov 1
echo "angsd finished running"
