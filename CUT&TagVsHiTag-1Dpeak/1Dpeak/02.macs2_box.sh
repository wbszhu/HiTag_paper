cuttag=$1
self_peak=$2
path=$3
#box plot for macs2 score 
cat ${path}/cuttag_uniq.bedtmp |awk '{print $9"\t""CUT&Tag""\t""NotOverlap"}'>  ${path}/cuttag_uniq_boxtmp
cat ${path}/selfPeak_uniq.bedtmp |awk '{print $9"\t""HiTag""\t""NotOverlap"}'> ${path}/hitag_uniq_boxtmp

awk '{print $9"\t""CUT&Tag""\t""Overlap"}' ${path}/all_overlap.bedtmp > ${path}/cuttag_overlap_boxtmp
awk '{print $19"\t""HiTag""\t""Overlap"}' ${path}/all_overlap.bedtmp > ${path}/drp_overlap_boxtmp

cat ${path}/cuttag_uniq_boxtmp ${path}/hitag_uniq_boxtmp ${path}/cuttag_overlap_boxtmp ${path}/drp_overlap_boxtmp  > ${path}/boxplot.txt
