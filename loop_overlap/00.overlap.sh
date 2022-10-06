sample1=$1
sample2=$2
in_path=$3
out_path=$4

mkdir $out_path

for i in $sample1 $sample2
do
cat ${in_path}/${i}.bedpe|awk 'BEGIN{FS="\t";OFS="\t"}{print $1,$2-10000,$3+10000,$4,$5-10000,$6+10000}'|awk '{if($2>0) print $0}' -> ${out_path}/${i}_10kb.bedpe
done

bedtools pairtopair -type neither -a ${out_path}/${sample1}_10kb.bedpe  -b ${out_path}/${sample2}_10kb.bedpe|awk 'BEGIN{FS="\t";OFS="\t"}{print $1,$2+10000,$3-10000,$4,$5+10000,$6-10000}'|sort -u  > ${out_path}/${sample1}_unique.bedpe 
bedtools pairtopair -type neither -a ${out_path}/${sample2}_10kb.bedpe  -b ${out_path}/${sample1}_10kb.bedpe|awk 'BEGIN{FS="\t";OFS="\t"}{print $1,$2+10000,$3-10000,$4,$5+10000,$6-10000}'|sort -u  > ${out_path}/${sample2}_unique.bedpe                          
bedtools pairtopair -type both -a ${out_path}/${sample2}_10kb.bedpe  -b ${out_path}/${sample1}_10kb.bedpe|awk 'BEGIN{FS="\t";OFS="\t"}{print $1,$2+10000,$3-10000,$4,$5+10000,$6-10000}'|sort -u > ${out_path}/both.bedpe
rm -rf ${out_path}/${sample2}_10kb.bedpe ${out_path}/${sample1}_10kb.bedpe
