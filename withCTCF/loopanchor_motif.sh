#for i in 3 4 5 
#do 
#cat N${i}.bedpe |awk '{print $1"\t"$2"\t"$3"\n"$4"\t"$5"\t"$6}' |sort -u > N${i}_anchor.bed
#cat N${i}.bedpe |awk '{print $1"_"$2"_"$3"\t"$4"_"$5"_"$6}' |sort -u > N${i}_anchor.txt
#bedtools intersect -a N${i}_anchor.bed -b CTCF.motif.bed  -wa -wb|awk '{OFS=FS="\t"}{print $1"_"$2"_"$3,$7}'|sort -u > N${i}_anchorMotif.txt
#rm -rf N${i}_anchor.bed
#done

for i in 3 4 5 
do 
cat ../N${i}_self.bedpe |awk '{print $1"\t"$2"\t"$3"\n"$4"\t"$5"\t"$6}' |sort -u > N${i}_selfanchor.bed
cat ../N${i}_self.bedpe |awk '{print $1"_"$2"_"$3"\t"$4"_"$5"_"$6}' |sort -u > N${i}_selfanchor.txt
bedtools intersect -a N${i}_selfanchor.bed -b CTCF.motif.bed  -wa -wb|awk '{OFS=FS="\t"}{print $1"_"$2"_"$3,$7}'|sort -u > N${i}_selfanchorMotif.txt
rm -rf N${i}_selfanchor.bed
done

