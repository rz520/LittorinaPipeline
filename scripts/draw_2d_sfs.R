#Use angsd realSFS outputs to draw 2d sfs heat map

#open a pdf file to store 2d sfs heatplots
pdf("pictures/2d_sfs.pdf")

#split plot into 3 parts
par(mfcol=c(3,1))

#draw crab-hybrid 2d joint sfs heatmap
ch_values <- scan('data/crab.hybrid.folded.sfs')
ch_sfs <- matrix(ch_values, ncol = 53, byrow = T)
ch_n1=nrow(ch_sfs)-1
ch_n2=ncol(ch_sfs)-1
image(x=seq(0,ch_n1), y=seq(0,ch_n2), z=log10(ch_sfs), xlab = 'crab', ylab = 'hybrid', main='joint sfs')

#draw crab-wave 2d joint sfs heatmap
cw_values <- scan('data/crab.wave.folded.sfs')
cw_sfs <- matrix(cw_values, ncol = 63, byrow = T)
cw_n1=nrow(cw_sfs)-1
cw_n2=ncol(cw_sfs)-1
image(x=seq(0,cw_n1), y=seq(0,cw_n2), z=log10(cw_sfs), xlab = 'crab', ylab = 'wave', main='joint sfs')

#draw hybrid-wave 2d joint sfs heatmap
hw_values <- scan('data/hybrid.wave.folded.sfs')
hw_sfs <- matrix(hw_values, ncol = 63, byrow = T)
hw_n1=nrow(hw_sfs)-1
hw_n2=ncol(hw_sfs)-1
image(x=seq(0,hw_n1), y=seq(0,hw_n2), z=log10(hw_sfs), xlab = 'hybrid', ylab = 'wave', main='joint sfs')

dev.off() 
