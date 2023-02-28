ID1=$1
ID2=$2
coolF1=$3
coolF2=$4
out_path=$5

#get raw contact count 
#ID1
python get_counts.py ${coolF1}::resolutions//5000 $out_path/${ID1}_5kb_cc.tmp
sed 's/,/\t/g' $out_path/${ID1}_5kb_cc.tmp > $out_path/${ID1}_5kb_cc.tmp1
awk '{print $2"_"$3"\t"$4}' $out_path/${ID1}_5kb_cc.tmp1 | grep -v bin2_id_count - > $out_path/${ID1}_5kb_cc.txt
#ID2
python get_counts.py ${coolF2}::resolutions//5000 $out_path/${ID2}_5kb_cc.tmp
sed 's/,/\t/g' $out_path/${ID2}_5kb_cc.tmp > $out_path/${ID2}_5kb_cc.tmp1
awk '{print $2"_"$3"\t"$4}' $out_path/${ID2}_5kb_cc.tmp1 | grep -v bin2_id_count - > $out_path/${ID2}_5kb_cc.txt
rm -rf $out_path/*tmp*
