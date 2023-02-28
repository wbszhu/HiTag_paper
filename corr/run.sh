#hitag VS hichip
#bash union_loopcorr.sh HiTag hichip \
# ../DRP-5-7-25_25M.bedpe  ../DRP-5-7-25_25M.nobalance.mcool \
# ../k562-h3k27ac-hichip_25M.bedpe  ../k562-h3k27ac-hichip_25M.nobalance.mcool \
# GRCh38 /data2/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes \
#  /data2/zhanglu/tmp/hitag/fig/test/HiTag_hichip

#hitag VS hic
#bash union_loopcorr.sh HiTag Hi-C  \
# ../DRP-5-7-25_10000M.bedpe \
# ../DRP-5-7-25_10000M.nobalance.mcool \
# ../GSE63525_K562_all.bedpe  \
# ../GSE63525_K562_all.nobalance.mcool \
#  GRCh38 /data2/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes  \
# /data2/zhanglu/tmp/hitag/fig/test/HiTag_hic

#hichip VS hic
#bash union_loopcorr.sh hichip Hi-C \
#  ../k562-h3k27ac-hichip.bedpe ../k562-h3k27ac-hichip.nobalance.mcool \
#  ../GSE63525_K562_all.bedpe  \
#  ../GSE63525_K562_all.nobalance.mcool \
#  GRCh38 /data2/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes  \
#   /data2/zhanglu/tmp/hitag/fig/test/hichip_hic

#rep1 VS rep2
#bash union_loopcorr.sh  \
#  rep1 rep2 \
#  ../DRP-57.bedpe  ../DRP-57.nobalance.mcool  \
#  ../DRP-25.bedpe  ../DRP-25.nobalance.mcool \
#  GRCh38 /data2/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes  \
#  /data2/zhanglu/tmp/hitag/fig/test/rep1_rep2

#hic VS hichip
#bash union_loopcorr.sh  \
#  hic hichip \
#  ../GSE63525_K562_all_loops.txt ../GSE63525_K562_all_5Khg38.balance.mcool \
#  ../k562-h3k27ac-hichip.bedpe  ../k562-h3k27ac-hichip.balance.mcool \
#  GRCh38 /data2/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes  \
#  /data2/zhanglu/tmp/hitag/fig/unionLoop_corr/hic-hichip

