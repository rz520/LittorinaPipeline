#Use PCAngsd output genetic covariance matrix to draw PCA whose colour presents distance along crab-hybrid-wave axis

library(ggplot2)

#Load the covariance matrix
cov <- as.matrix(read.table("data/ALL_PCANGSD_PCA.cov", header = F))

#We will also add a column with population assingments
#When drawing the first version of PCA, we don't know ecotype of every individual
pop <- rep("unknown", times = 73)
#However, we know the distance of every individual along crab-hybrid-wave axis
dis <- read.table('data/EA1_distances_0.txt')

mme.pca <- eigen(cov) #perform the pca using the eigen function. 
eigenvectors = mme.pca$vectors #extract eigenvectors 
pca.vectors = as.data.frame(cbind(pop, eigenvectors, dis$V2)) #combine with our population and distance assignments
names(pca.vectors)[75] <- 'distance'
df = type.convert(pca.vectors)

#draw PCA
pca = ggplot(data = df, aes(x=V2, y=V3, colour=distance)) + geom_point()

ggsave(filename = "pictures/ALL_PCANGSD_PCA_distance.pdf", plot = pca)
