#Use PCAngsd output genetic covariance matrix to draw PCA whose colour presents ecotype category

library(ggplot2)

#Load the covariance matrix
cov <- as.matrix(read.table("data/ALL_PCANGSD_PCA.cov", header = F))

#We will also add a column with population assingments
#When drawing the second version of PCA, we know ecotype of every individual from admixture analysis
type <- read.table('data/ecotype.txt')
pop <- type$ecotype

mme.pca <- eigen(cov) #perform the pca using the eigen function. 
eigenvectors = mme.pca$vectors #extract eigenvectors 
pca.vectors = as.data.frame(cbind(pop, eigenvectors)) #combine with our population assignments
df = type.convert(pca.vectors)

#draw PCA
pca = ggplot(data = df, aes(x=V2, y=V3, colour=pop)) + geom_point() + scale_color_manual(values=c("crab" = "blue","wave" = "red","hybrid" = "orange"))

ggsave(filename = "pictures/ALL_PCANGSD_PCA_ecotype.pdf", plot = pca)







