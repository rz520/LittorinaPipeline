#Use linkage map to classify contigs in different chromosome, sort contigs in the same chromosome in the order of 
#position and then output contig list in every chromosome

library(tidyverse)
library(readr)

lg <- read.table('data/Linkage_map.txt', header = T)

for (i in 1:17) {
  lg_chromo <- subset(lg, LG==i)
  lg_chromo <- lg_chromo[order(lg_chromo[,3]),]
  write.table(as.character(lg_chromo$contig), paste('results/ld_decay/chromo',i,'_contig.txt', sep = ''), row.names = F, col.names = F, quote = F)
  
}
