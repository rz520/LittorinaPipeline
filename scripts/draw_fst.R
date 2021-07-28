#Use angsd realSFS output to calculate fst value of every SNP in every pairs of ecotype, 
#then merge fst data with linkage map data to draw scatter plot in every chromosome and ecotype pairs

library(ggplot2)
library(reshape2)

#read fst value
fst <- read.table('data/wave_fold_1.pbs.fst')
colnames(fst)[1:2] <- c('contig', 'site')

#use raw value to calculate fst between every population pairs
fst$crab_hybrid <- fst$V3 / fst$V4
fst$crab_wave <- fst$V5 / fst$V6
fst$hybrid_wave <- fst$V7 / fst$V8

#extract useful columns
fst_cal <- fst[,c(1,9:11)]

#data wrangling and prepare for plotting
lg <- read.table('data/Linkage_map.txt', header = T)
fst_wrangled <- melt(fst_cal, id=c("contig"), variable.name="population", value.name = "fst")
fst_lg <- merge(fst_wrangled,lg)

#draw and save plot
pdf("pictures/fst_fold_1.pdf",12,12)
theme_set(theme_bw())
ggplot(data = fst_lg, aes(x=position,y=fst)) + geom_point() + facet_grid(population~LG)
graphics.off()


