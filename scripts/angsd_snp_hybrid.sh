#Use angsd to estimate genotype likelihood and SNP position in hybrid ecotype which are 
#inputs of linkage disequilibrium value calculation (ngsLD)

#!/bin/bash
#PBS -l walltime=10:00:00
#PBS -l select=1:ncpus=5:mem=40gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
REF=$DIR/ld_decay/lgmap_contig.fa
module load anaconda3/personal
angsd=/rds/general/user/rz520/home/workshop/Software/angsd/angsd

echo "angsd starts to run"
$angsd -b $DIR/hybrid_bams.txt -ref $REF -anc $REF -out $BASEDIR/results/ld_decay/HYBRID \
-uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 \
-minMapQ 20 -minQ 20 -minInd 8 -setMinDepth 8 -setMaxDepth 100 \
-GL 1 -doGlf 2 -doMajorMinor 1 -doPost 1 -doMaf 1 -minMaf 0.03 \
-doCounts 1
echo "angsd finished running"
