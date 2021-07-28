#Use angsd realSFS outputs to draw 1d sfs barplot

#read 1d folded sfs of every population
crab <- scan('data/crab.folded.sfs')
wave <- scan('data/wave.folded.sfs')
hybrid <- scan('data/hybrid.folded.sfs')

#draw and save 1d folded sfs barplot
pdf("pictures/1d_sfs.pdf")
par(mfcol=c(3,1))
barplot(crab[-1], main = 'crab')
barplot(hybrid[-1], main = 'hybird')
barplot(wave[-1], main = 'wave')
dev.off() 
