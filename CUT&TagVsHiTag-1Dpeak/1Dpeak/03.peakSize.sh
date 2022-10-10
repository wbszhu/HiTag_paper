cuttag=$1
self_peak=$2
path=$3

cat ${path}/cuttag_uniq.bedtmp | awk '{print $3-$2"\t""CUT&Tag""\t""NotOverlap"}' > ${path}/cuttag_only_peak_sizetmp
cat ${path}/selfPeak_uniq.bedtmp | awk '{print $3-$2"\t""HiTag""\t""NotOverlap"}' > ${path}/self_only_peak_sizetmp
#overlap peak size hist
cat ${path}/all_overlap.bedtmp|awk '{print $3-$2"\t""CUT&Tag""\t""Overlap"}' > ${path}/cuttag_only_peak_size_overlaptmp
cat ${path}/all_overlap.bedtmp|awk '{print $13-$12"\t""HiTag""\t""Overlap"}' > ${path}/self_only_peak_size_overlaptmp
cat ${path}/cuttag_only_peak_size_overlaptmp ${path}/self_only_peak_size_overlaptmp ${path}/cuttag_only_peak_sizetmp ${path}/self_only_peak_sizetmp > ${path}/overlap_peak_size_for_hist.txt

#all peak size hist
cat ${cuttag} | awk '{OFS=FS="\t"}{print $1,$2,$3}' > ${path}/cuttagPeak.txt
cat ${self_peak} | awk '{OFS=FS="\t"}{print $1,$2,$3}' > ${path}/selfPeak.txt
cat ${path}/selfPeak_uniq.bedtmp | awk '{OFS=FS="\t"}{print $1,$2,$3}' > ${path}/selfUniqPeak.txt
cat ${path}/cuttag_uniq.bedtmp | awk '{OFS=FS="\t"}{print $1,$2,$3}' > ${path}/cuttagUniqPeak.txt
#cat ${cuttag} | awk -F'\t' 'BEGIN{SUM=0}{ SUM+=$3-$2 }END{print SUM}' > ${path}/cuttagPeak_size
#cat ${self_peak} | awk -F'\t' 'BEGIN{SUM=0}{ SUM+=$3-$2 }END{print SUM}' > ${path}/selfPeak_size
#cat ${path}/selfPeak_uniq.bedtmp | awk -F'\t' 'BEGIN{SUM=0}{ SUM+=$3-$2 }END{print SUM}' > ${path}/selfUniqPeak_size
#cat ${path}/cuttag_uniq.bedtmp | awk -F'\t' 'BEGIN{SUM=0}{ SUM+=$3-$2 }END{print SUM}' > ${path}/cuttagUniqPeak_size
