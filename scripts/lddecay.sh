#This is a shell script running LD decay analysis in every chromosome

#!/bin/bash
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=4:mem=20gb

DIR=/rds/general/user/rz520/home/project/data
BASEDIR=/rds/general/user/rz520/home/project
module load anaconda3/personal
ngsLD=/rds/general/user/rz520/home/workshop/Software/ngsLD

echo "start"

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c1.list --out $BASEDIR/results/pictures/lddecay_c1.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c2.list --out $BASEDIR/results/pictures/lddecay_c2.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c3.list --out $BASEDIR/results/pictures/lddecay_c3.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c4.list --out $BASEDIR/results/pictures/lddecay_c4.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c5.list --out $BASEDIR/results/pictures/lddecay_c5.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c6.list --out $BASEDIR/results/pictures/lddecay_c6.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c7.list --out $BASEDIR/results/pictures/lddecay_c7.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c8.list --out $BASEDIR/results/pictures/lddecay_c8.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c9.list --out $BASEDIR/results/pictures/lddecay_c9.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c10.list --out $BASEDIR/results/pictures/lddecay_c10.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c11.list --out $BASEDIR/results/pictures/lddecay_c11.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c12.list --out $BASEDIR/results/pictures/lddecay_c12.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c13.list --out $BASEDIR/results/pictures/lddecay_c13.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c14.list --out $BASEDIR/results/pictures/lddecay_c14.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c15.list --out $BASEDIR/results/pictures/lddecay_c15.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c16.list --out $BASEDIR/results/pictures/lddecay_c16.pdf

Rscript --vanilla --slave $ngsLD/scripts/fit_LDdecay.R --ld_files $DIR/ld_files_c17.list --out $BASEDIR/results/pictures/lddecay_c17.pdf


echo "ld decay has finished running"


