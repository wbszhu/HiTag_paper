df = read.table("C:\\Users\\luzhang\\Desktop\\RawCounts.txt",sep="\t")

library(ggplot2)
library(smplot2)
ggplot(df,aes(V4,V5))+
  geom_point(alpha=0.5,colour = "blue")+
  geom_smooth(colour = "black")+
  xlab("HiTag-1Dpeak")+
  ylab("CUT&Tag")+
  theme_classic()

 # theme_bw()
