#Draw ld heat map in your interested region of chromosome in the order of contigs position on chromosome 

library(gtools)
library(reshape2)
library(tidyverse)
library(readr)
library(LDheatmap)

#read ld file
r <- read.table('/rds/general/user/rz520/ephemeral/project/crab_c12_sub.ld', stringsAsFactors = FALSE)
colnames(r) <- c('snp1', 'snp2', 'dist', 'r2p', 'D', 'Dp', 'r2')
#find unique SNP and sort them in the right order
id <- mixedsort(unique(c(r[,"snp1"],r[,"snp2"])))
id1 <- unique(r$snp1)
id2 <- unique(r$snp2)
posStart <- setdiff(id, id1)
posEnd <- setdiff(id, id2)
r <- rbind(r, c(posStart,posStart,0,NA,NA,NA,NA), c(posEnd,posEnd,0,NA,NA,NA,NA))

#manage ld value r2 between every 2 SNPs into a matrix
m <- apply(acast(r, snp1 ~ snp2, value.var='r2', drop=FALSE),2,as.numeric)
rownames(m) <- colnames(m)
m <- m[mixedorder(rownames(m)),mixedorder(colnames(m))]

#rearrange the SNPs in the order of contigs position on chromosome
id_df <- as.data.frame(id)
colnames(id_df) <- 'id'
distance <- id_df %>% separate(id, into = c('contig','site'), sep = ':')
lg <- read.table('/rds/general/user/rz520/home/project/data/Linkage_map.txt', header = T)
dis_lg <- merge(distance,lg)
dis_lg <- unite(dis_lg, 'id', contig:site, sep = ':')
dis_lg <- dis_lg[mixedorder(dis_lg$id),]
rownames(dis_lg) <- 1:nrow(dis_lg)
dis_lg <- dis_lg[order(dis_lg$position),]
dist <- dis_lg$position
dis_order <- as.numeric(rownames(dis_lg))
#new r2 value matrix
m1 <- m[dis_order,dis_order]

#guarantee r2 value between 2 SNPs on the right position of matrix
for (x in 1:nrow(m1)){
  for (y in 1:nrow(m1)){
    if ( y > x){
      m1[x,y] <-setdiff(c(m1[x,y],m1[y,x]), NA)  
    }else{m1[x,y] <- NA}
  }
}


# Save plot
pdf('test/pictures/crab_c12_ld_block.pdf', width=10, height=10)
LDheatmap(m1, genetic.distances=dist, SNP.name=id, geneMapLabelX=0.75, geneMapLabelY=0.25, color="blueToRed", LDmeasure='r2')
x <- dev.off()



#if you have interested region of chromosome, you can only plot ld heat map on this region
#such as: 

#sub1 <- subset(dis_lg, position < 0.34)
#sub2 <- subset(dis_lg, position > 14.21)
#num1 <- nrow(sub1) + 1
#num2 <- nrow(dis_lg) - nrow(sub2)
#test <- m[num1:num2, num1:num2]
#dist1 <- dist[num1:num2]
#id1 <- id[num1:num2]
#LDheatmap(test, genetic.distances=dist1, SNP.name=id1, geneMapLabelX=0.75, geneMapLabelY=0.25, color="blueToRed", LDmeasure='r2')

