#Use prepared genotype likelihood file and SNP position file of wave ecotype to calculate LD by ngsLD software

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
--geno $BASEDIR/results/ld_decay/wave_c1.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c1.pos.gz \
--probs \
--n_ind 31 \
--n_sites 10655 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c1_sub.ld

echo "c2"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c2.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c2.pos.gz \
--probs \
--n_ind 31 \
--n_sites 10839 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c2_sub.ld

echo "c3"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c3.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c3.pos.gz \
--probs \
--n_ind 31 \
--n_sites 13378 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c3_sub.ld

echo "c4"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c4.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c4.pos.gz \
--probs \
--n_ind 31 \
--n_sites 12200 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c4_sub.ld

echo "c5"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c5.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c5.pos.gz \
--probs \
--n_ind 31 \
--n_sites 13373 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c5_sub.ld

echo "c6"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c6.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c6.pos.gz \
--probs \
--n_ind 31 \
--n_sites 10724 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c6_sub.ld

echo "c7"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c7.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c7.pos.gz \
--probs \
--n_ind 31 \
--n_sites 9507 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c7_sub.ld

echo "c8"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c8.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c8.pos.gz \
--probs \
--n_ind 31 \
--n_sites 10815 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c8_sub.ld

echo "c9"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c9.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c9.pos.gz \
--probs \
--n_ind 31 \
--n_sites 10203 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c9_sub.ld

echo "c10"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c10.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c10.pos.gz \
--probs \
--n_ind 31 \
--n_sites 9043 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c10_sub.ld

echo "c11"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c11.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c11.pos.gz \
--probs \
--n_ind 31 \
--n_sites 9630 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c11_sub.ld

echo "c12"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c12.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c12.pos.gz \
--probs \
--n_ind 31 \
--n_sites 10571 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c12_sub.ld

echo "c13"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c13.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c13.pos.gz \
--probs \
--n_ind 31 \
--n_sites 12850 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c13_sub.ld

echo "c14"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c14.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c14.pos.gz \
--probs \
--n_ind 31 \
--n_sites 9292 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c14_sub.ld

echo "c15"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c15.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c15.pos.gz \
--probs \
--n_ind 31 \
--n_sites 11548 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c15_sub.ld

echo "c16"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c16.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c16.pos.gz \
--probs \
--n_ind 31 \
--n_sites 9628 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c16_sub.ld

echo "c17"
$NGSLD/ngsLD \
--geno $BASEDIR/results/ld_decay/wave_c17.beagle.gz \
--pos $BASEDIR/results/ld_decay/wave_c17.pos.gz \
--probs \
--n_ind 31 \
--n_sites 9151 \
--max_kb_dist 0 \
--n_threads 8 \
--out /rds/general/user/rz520/ephemeral/project/wave_c17_sub.ld


echo "finish"
