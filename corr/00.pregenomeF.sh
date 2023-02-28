gn=$1
gz_path=$2
out_path=$3

#get union loop 

mkdir -p $out_path

bedtools makewindows -g $gz_path -w 5000 |awk '{print NR"\t"$1"_"$2"_"$3}' > $out_path/${gn}.5kb.txt
bedtools makewindows -g $gz_path -w 5000  > $out_path/${gn}.5kb.bed
