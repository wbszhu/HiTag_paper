ID1=$1
ID2=$2
loopF1=$3
coolF1=$4
coolF2=$5
gn=$6
gz=$7
out_path=$8


bash 00.pregenomeF.sh  $gn  $gz  $out_path

bash 01.unique_loop.sh   $gn $loopF1  $out_path

bash 02.all_readscount.sh $ID1 $ID2 $coolF1 $coolF2 $out_path

bash 03.loop_readscounts.sh  $gn $ID1 $ID2 $out_path
