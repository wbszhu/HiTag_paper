library(ChIPpeakAnno)
setwd("C:\\Users\\lzhang\\Desktop\\HiTag")
HiTag_1DPeak <- toGRanges("DRP-5-7-25_peaks.narrowPeakpup5_qup2.txt", format="BED", header=FALSE) 
## one can also try import from rtracklayer
H3K27ac_CUTTAG <- toGRanges("H3K27ac_K562_pup5_qup2_peak.txt", format="BED", header=FALSE,)
## must keep the class exactly same as HiTag_1DPeak$score, i.e., numeric.
H3K27ac_CUTTAG$score <- as.numeric(H3K27ac_CUTTAG$score) 
ol <- findOverlapsOfPeaks(HiTag_1DPeak, H3K27ac_CUTTAG)
## add metadata (mean of score) to the overlapping peaks
ol <- addMetadata(ol, colNames="score", FUN=mean) 
ol$peaklist[["HiTag_1DPeak///H3K27ac_CUTTAG"]][1:2]
makeVennDiagram(ol, fill=c("#009E73", "#F0E442"), # circle fill color
                col=c("#D55E00", "#0072B2"), #circle border color
                cat.col=c("#D55E00", "#0072B2")) # label color, keep same as circle border color

