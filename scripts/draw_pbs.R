#Use window pbs value of every ecotype in angsd realSFS output and linkage map data 
#to draw scatter plot in every chromosome and ecotype

library(ggplot2)
library(reshape2)

#read window pbs value
pbs = read.table("data/wave_fold_1.pbs.fst.txt", header = T)
pbs$PBS1[which(pbs$PBS1<0)]=0
pbs$PBS2[which(pbs$PBS2<0)]=0
pbs$PBS0[which(pbs$PBS0<0)]=0

colnames(pbs) <- c('region', 'contig', 'midPos', 'Nsites', 'Fst01', 'Fst02', 'Fst12', 'PBS0', 'PBS1', 'PBS2')

#extract useful columns
pbs_sub <- pbs[,c(2,8,9,10)]
colnames(pbs_sub) <- c('contig', 'crab', 'hybrid', 'wave')

#data wrangling 
lg <- read.table('data/Linkage_map.txt', header = T)
pbs_lg <- merge(pbs_sub,lg)
pbs_wrangled <- melt(pbs_lg, id=c("contig", "LG", "position"), variable.name="population", value.name = "pbs")

#draw and save plot
pdf("pictures/pbs_fold_1.pdf",12,12)
theme_set(theme_bw())
ggplot(data = pbs_wrangled, aes(x=position,y=pbs)) + geom_point() + facet_grid(population~LG)
graphics.off()
