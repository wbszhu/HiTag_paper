
sample1=$1
sample2=$2
in_path=$3
out_path=$4

for i in $sample1 $sample2
do
cat ${out_path}/${i}_unique.bedpe|grep -v "s1"|awk 'BEGIN{FS="\t";OFS="\t"}{print $5-$2}' > ${out_path}/${i}_unique.dis
cat ${in_path}/${i}.bedpe|grep -v "s1"|awk 'BEGIN{FS="\t";OFS="\t"}{print $5-$2}' > ${out_path}/${i}.dis
done

paste ${out_path}/${sample1}_unique.dis ${out_path}/${sample2}_unique.dis  ${out_path}/${sample1}.dis ${out_path}/${sample2}.dis > ${out_path}/dis.txt

for i in $sample1 $sample2
do
rm -rf ${out_path}/${i}_unique.dis ${out_path}/${i}.dis
done
