#Use ngsAdmix output to draw barplot showing admixture proportions inferred from genotype likelihoods
#Use ngsAdmix output to classify individual ecotype category as crab, wave or hybird and output individual list of every ecotype

library(tidyverse) #load the tidyverse package for formatting and plotting
library(readr)

#Load the covariance matrix
admix = read_table("data/ALL_ANGSD_PCA_ngsAdmix_K2_out.qopt", col_names = F)

#We will also add a column with population assingments
pop <- rep("unknown", times = 73)

admix.id = as.data.frame(cbind(pop, admix))
names(admix.id) = c("pop","q1","q2")

pdf("pictures/ALL_ANGSD_PCA_ngsAdmix_K2_plot.pdf")
barplot(t(as.matrix(subset(admix.id, select=q1:q2))), col=c("firebrick","royalblue"), border=NA)
dev.off() 

#use admixture analysis result as criteria to distinguish individual ecotype
a <- read.table('data/EA1_distances_0.txt')
a$ecotype <- "unknown"

#use population contribution to distinguish individual ecotype
for (i in 1:73) {
  if (admix.id$q1[i] > 0.9) {
    a$ecotype[i] <- "wave"}
  else {
    if (admix.id$q1[i] < 0.001) {
      a$ecotype[i] <- "crab"
    } else {a$ecotype[i] <- "hybrid"}
  }
}
colnames(a) <- c('individual', 'distance', 'ecotype')

#output ecotype information
write.table(a, 'data/ecotype.txt', col.names = T, row.names = T, quote = F)

#create individual list in every population
a$individual <- str_remove(a$individual, 'ER_EA1_')
crab <- subset(a, ecotype=='crab')
wave <- subset(a, ecotype=='wave')
hybrid <- subset(a, ecotype=='hybrid')
write.table(crab$individual, file = 'data/crab.txt',quote = F, col.names = F, row.names = F)
write.table(wave$individual, file = 'data/wave.txt',quote = F, col.names = F, row.names = F)
write.table(hybrid$individual, file = 'data/hybrid.txt',quote = F, col.names = F, row.names = F)

