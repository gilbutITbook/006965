args = commandArgs()
basename = sub(".R$", "", sub("^--file=(.*/)?", "", args[grep("^--file=", args)]))
if (length(basename) != 0)
    quartz(type="pdf", file=paste0(basename, ".pdf"), width=4, height=4)
par(family="Palatino")
par(mgp=c(1.5,0.5,0)) # title and axis margins. default: c(3,1,0)
par(mar=c(2,2,1,1)+0.1) # bottom, left, top, right margins. default: c(5,4,4,2)+0.1
plot(NULL, xlim=c(0,10), ylim=c(0,1), xlab="", ylab="")
s = seq(4.4, 10, 0.1)
polygon(c(s,10,4.4), c(df(s,2,4),0,0), col="gray")
curve(df(x,2,4), lwd=2, add=T)
dev.off()
