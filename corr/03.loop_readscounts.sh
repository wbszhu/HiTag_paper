gn=$1
ID1=$2
ID2=$3
out_path=$4

#get raw contact count of loop anchor bin
for i in ${ID1} ${ID2}
do
python3 get_loop_counts.py $out_path/combineloop.txt $out_path/${gn}.5kb.txt $out_path/${i}_5kb_cc.txt $out_path/${i}_5kb_cc_out
done
#python3 get_loop_counts.py $out_path/combineloop.txt $out_path/${gn}.5kb.txt $out_path/${ID1}_5kb_cc.txt $out_path/${ID1}_5kb_cc_out
#python3 get_loop_counts.py $out_path/combineloop.txt $out_path/${gn}.5kb.txt $out_path/${ID2}_5kb_cc.txt $out_path/${ID2}_5kb_cc_out
paste $out_path/${ID1}_5kb_cc_out $out_path/${ID2}_5kb_cc_out > $out_path/combine_cc_out
rm -rf tmp
