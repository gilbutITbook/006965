args = commandArgs()
basename = sub(".R$", "", sub("^--file=(.*/)?", "", args[grep("^--file=", args)]))
if (length(basename) != 0)
    quartz(type="pdf", file=paste0(basename, ".pdf"), width=7, height=5)
par(family="HiraKakuProN-W3")
par(mgp=c(2,0.8,0)) # title and axis margins. default: c(3,1,0)
par(mar=c(3,4,2,2)+0.1) # bottom, left, top, right margins. default: c(5,4,4,2)+0.1

x = read.csv("D:/006965_누구나통계withR/09. code/ch08/nikkyoso.csv", fileEncoding = "utf-8")
x$교직원조합표 = round(x$Y2004참의원선거나타니야마사요시 + x$Y2007참의원가미모토미에코)
plot(x$총합점, x$교직원조합표, pch=16, log="y", xlab="총합점", ylab="", bty="l", las=1)
mtext("교직원 조합 표", at=c(410, 52000))
abline(v=c(476.3, 498.85))
abline(h=c(1994, 8127.5))
dev.off()


