cuttag=$1
self_peak=$2
path=$3

bedtools intersect  -a ${cuttag} -b ${self_peak} -wa -v > ${path}/cuttag_uniq.bedtmp
bedtools intersect  -a ${self_peak} -b ${cuttag} -wa -v > ${path}/selfPeak_uniq.bedtmp
bedtools intersect -a ${cuttag} -b ${self_peak} -wa -wb > ${path}/all_overlap.bedtmp
