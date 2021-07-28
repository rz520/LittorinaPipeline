#Use pi value in angsd thetaStat output in every ecotype and linkage map data 
#to draw scatter plot in every chromosome and ecotype category

library(ggplot2)
library(reshape2)

#read linkage map data
lg <- read.table('data/Linkage_map.txt', header = T)

#read crab window theta data
crab_theta <- read.table('data/crab_theta.thetasWindow.pestPG', header = T)
names(crab_theta)[2] <- "contig"
#data wrangling
crab_theta_lg <- merge(crab_theta,lg)

#read hybrid window theta data
hybrid_theta <- read.table('data/hybrid_theta.thetasWindow.pestPG', header = T)
names(hybrid_theta)[2] <- "contig"
#data wrangling
hybrid_theta_lg <- merge(hybrid_theta,lg)

#read wave window theta data
wave_theta <- read.table('data/wave_theta.thetasWindow.pestPG', header = T)
names(wave_theta)[2] <- "contig"
#data wrangling
wave_theta_lg <- merge(wave_theta,lg)

#unite theta data of crab, hybrid and wave
crab_theta_lg$population <- 'crab'
hybrid_theta_lg$population <- 'hybird'
wave_theta_lg$population <- 'wave'
theta_lg <- rbind(crab_theta_lg, hybrid_theta_lg, wave_theta_lg)

#draw and save plot
pdf("pictures/pi_fold_1.pdf",12,12)
theme_set(theme_bw())
ggplot(data = theta_lg, aes(x=position,y=tP)) + geom_point() + facet_grid(population~LG)
graphics.off()


