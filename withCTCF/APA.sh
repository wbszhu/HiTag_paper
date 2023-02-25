n=3
cool=../../../pre_run/Hi-Tag-N${n}.results/mcool/Hi-Tag-N${n}.balance.mcool
for i in N${n}_loop
do
awk 'BEGIN{OFS=FS="\t"}{print  $1,$2,$3,$4,$5,$6}' ../${i} |grep -v "s2" > ${i}_6col.bedpe
sed -i '1i\chrom1\tstart1\tend1\tchrom2\tstart2\tend2' ${i}_6col.bedpe
coolpup.py ${cool}::/resolutions/5000  ${i}_6col.bedpe --outname ${i}.txt
plotpup.py --input_pups ${i}.txt --output ${i}.pdf --plot_ticks --height 5 --vmax 12 --vmin 0
done
