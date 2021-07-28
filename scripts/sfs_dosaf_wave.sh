#Use angsd -doSaf to estimate SFS in wave

#!/bin/bash
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=5:mem=40gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
REF=$DIR/Ref.fa
ANC=$DIR/Ref.fa

module load anaconda3/personal
angsd=/rds/general/user/rz520/home/workshop/Software/angsd/angsd

echo "angsd starts to run"

echo "wave"
$angsd -b $DIR/wave_bams.txt -ref $REF -anc $ANC -out /rds/general/user/rz520/ephemeral/project/wave \
-uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -trim 0 -C 50 \
-minMapQ 20 -minQ 20 -minInd 31 -setMinDepth 31 -setMaxDepth 120 -doCounts 1 \
-GL 1 -doSaf 1
echo "finish"
