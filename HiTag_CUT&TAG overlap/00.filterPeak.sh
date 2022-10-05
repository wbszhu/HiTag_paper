for i in HiTag_allvailddownsamplepeak HiTag_allvaildpeak HiTag_selfetcdownsamplepeak HiTag_selfetcpeak
do
cat 00.raw/${i}.bed|awk '{if($8>=5&&$9>=2) print $0}' > ${i}_filter.bed
done
