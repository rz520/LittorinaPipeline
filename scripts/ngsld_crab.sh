#Use prepared genotype likelihood file and SNP position file of crab ecotype to calculate LD by ngsLD software

#!/bin/bash
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=8:mem=40gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project

module load anaconda3/personal
NGSLD=/rds/general/user/rz520/home/workshop/Software/ngsLD
source /rds/general/user/rz520/home/.bashrc

echo "ngsLD is going to run"
echo "c1"

$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c1.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c1.pos.gz \
--probs \
--n_ind 16 \
--n_sites 10293 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c1_sub.ld 

echo "c2"

$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c2.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c2.pos.gz \
--probs \
--n_ind 16 \
--n_sites 9820 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c2_sub.ld 


echo "c3"

$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c3.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c3.pos.gz \
--probs \
--n_ind 16 \
--n_sites 12257 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c3_sub.ld 

echo "c4"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c4.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c4.pos.gz \
--probs \
--n_ind 16 \
--n_sites 10764 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c4_sub.ld

echo "c5"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c5.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c5.pos.gz \
--probs \
--n_ind 16 \
--n_sites 11459 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c5_sub.ld

echo "c6"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c6.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c6.pos.gz \
--probs \
--n_ind 16 \
--n_sites 9802 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c6_sub.ld

echo "c7"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c7.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c7.pos.gz \
--probs \
--n_ind 16 \
--n_sites 10989 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c7_sub.ld

echo "c8"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c8.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c8.pos.gz \
--probs \
--n_ind 16 \
--n_sites 9285 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c8_sub.ld

echo "c9"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c9.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c9.pos.gz \
--probs \
--n_ind 16 \
--n_sites 12869 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c9_sub.ld

echo "c10"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c10.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c10.pos.gz \
--probs \
--n_ind 16 \
--n_sites 11542 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c10_sub.ld

echo "c11"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c11.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c11.pos.gz \
--probs \
--n_ind 16 \
--n_sites 10656 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c11_sub.ld

echo "c12"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c12.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c12.pos.gz \
--probs \
--n_ind 16 \
--n_sites 9483 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c12_sub.ld

echo "c13"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c13.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c13.pos.gz \
--probs \
--n_ind 16 \
--n_sites 11264 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c13_sub.ld

echo "c14"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c14.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c14.pos.gz \
--probs \
--n_ind 16 \
--n_sites 10426 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c14_sub.ld

echo "c15"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c15.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c15.pos.gz \
--probs \
--n_ind 16 \
--n_sites 10026 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c15_sub.ld

echo "c16"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c16.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c16.pos.gz \
--probs \
--n_ind 16 \
--n_sites 10668 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c16_sub.ld

echo "c17"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/crab_c17.beagle.gz \
--pos $BASEDIR/results/ld_decay/crab_c17.pos.gz \
--probs \
--n_ind 16 \
--n_sites 10160 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/crab_c17_sub.ld


echo "finish"
