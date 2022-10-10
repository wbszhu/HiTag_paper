cuttag=H3K27ac_K562_pup5_qup2_peak.bed 
self_peak=HiTag_allvaildpeak_filter.bed
path=/data2/zhanglu/tmp/hitag/fig/overlap_peak/use_cuttag_command/allvaild

rm -rf ${path}
mkdir -p ${path}
bash 00.filterPeak.sh
bash 01.uniquepeak.sh $cuttag $self_peak $path
bash 02.macs2_box.sh $cuttag $self_peak $path
bash 03.peakSize.sh $cuttag $self_peak $path
rm -rf ${path}/*tmp

