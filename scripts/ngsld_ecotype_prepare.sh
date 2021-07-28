#Extract every chromosome's contig data from overall mafs and beagle file in every ecotype population.
#Then sample genotype likelihood data and SNP position data in every chromosome and every ecotype population 
#to make the SNP number around 10,000 which will speed up LD decay analysis and guarantee the accuracy.
#This is only an example of chromosome 2. Please remember to change the chromosome number when you need.

#!/bin/bash
#PBS -l walltime=10:00:00
#PBS -l select=1:ncpus=5:mem=40gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project

echo "starts to run"
while read line
do
grep -w $line $BASEDIR/results/hybrid_lddecay.mafs >> $BASEDIR/results/ld_decay/hybrid_lddecay_c2.mafs
done < $BASEDIR/results/ld_decay/chromo2_contig.txt

while read line
do
grep $line'_' $BASEDIR/results/hybrid_lddecay.beagle >> $BASEDIR/results/ld_decay/hybrid_lddecay_c2.beagle
done < $BASEDIR/results/ld_decay/chromo2_contig.txt

cat $BASEDIR/results/ld_decay/hybrid_lddecay_c2.beagle | awk 'NR % 50 == 0' | cut -f 4- | gzip  >  $BASEDIR/results/ld_decay/hybrid_c2.beagle.gz

cat $BASEDIR/results/ld_decay/hybrid_lddecay_c2.mafs | cut -f 1,2 |  awk 'NR % 50 == 0' | sed 's/:/_/g'| gzip > $BASEDIR/results/ld_decay/hybrid_c2.pos.gz

while read line
do
grep -w $line $BASEDIR/results/crab_lddecay.mafs >> $BASEDIR/results/ld_decay/crab_lddecay_c2.mafs
done < $BASEDIR/results/ld_decay/chromo2_contig.txt

while read line
do
grep $line'_' $BASEDIR/results/crab_lddecay.beagle >> $BASEDIR/results/ld_decay/crab_lddecay_c2.beagle
done < $BASEDIR/results/ld_decay/chromo2_contig.txt

cat  $BASEDIR/results/ld_decay/crab_lddecay_c2.beagle | awk 'NR % 50 == 0' | cut -f 4- | gzip  >  $BASEDIR/results/ld_decay/crab_c2.beagle.gz

cat $BASEDIR/results/ld_decay/crab_lddecay_c2.mafs | cut -f 1,2 |  awk 'NR % 50 == 0' | sed 's/:/_/g'| gzip > $BASEDIR/results/ld_decay/crab_c2.pos.gz

while read line
do
grep -w $line $BASEDIR/results/wave_lddecay.mafs >> $BASEDIR/results/ld_decay/wave_lddecay_c2.mafs
done < $BASEDIR/results/ld_decay/chromo2_contig.txt

while read line
do
grep $line'_' $BASEDIR/results/wave_lddecay.beagle >> $BASEDIR/results/ld_decay/wave_lddecay_c2.beagle
done < $BASEDIR/results/ld_decay/chromo2_contig.txt

cat  $BASEDIR/results/ld_decay/wave_lddecay_c2.beagle | awk 'NR % 50 == 0' | cut -f 4- | gzip  >  $BASEDIR/results/ld_decay/wave_c2.beagle.gz

cat $BASEDIR/results/ld_decay/wave_lddecay_c2.mafs | cut -f 1,2 |  awk 'NR % 50 == 0' | sed 's/:/_/g'| gzip > $BASEDIR/results/ld_decay/wave_c2.pos.gz

echo "finished running"
