gn=$1
loopF1=$2
loopF2=$3
out_path=$4

cat $loopF1 $loopF2 |grep -v "s1"|awk '{OFS=FS="\t"}{print $1,$2,$3,$4,$5,$6}' > $out_path/combineloop.bedpe
bedtools pairtobed -a $out_path/combineloop.bedpe  -b $out_path/${gn}.5kb.bed -type both|awk '{print $1"_"$2"_"$3"\t"$4"_"$5"_"$6}' |sort -u > $out_path/combineloop.txt
