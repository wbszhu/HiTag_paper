#10M VS 25M
#bash union_loopcorr.sh  \
#  10M 25M \
#  ../DRP-5-7-25_10M.bedpe  ../DRP-5-7-25_10M.nobalance.mcool \
#  ../DRP-5-7-25_25M.bedpe  ../DRP-5-7-25_25M.nobalance.mcool \
#  GRCh38 /data1/zhanglu/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes  \
#  /data1/zhanglu/zhanglu/tmp/hitag/fig/unionLoop_corr/10M-25M

bash union_loopcorr.sh  \
  10M 50M \
  ../DRP-5-7-25_10M.bedpe  ../DRP-5-7-25_10M.nobalance.mcool \
  ../DRP-5-7-25_50M.bedpe  ../DRP-5-7-25_50M.nobalance.mcool \
  GRCh38 /data1/zhanglu/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes  \
  /data1/zhanglu/zhanglu/tmp/hitag/fig/unionLoop_corr/10M-50M


bash union_loopcorr.sh  \
  10M 100M \
  ../DRP-5-7-25_10M.bedpe  ../DRP-5-7-25_10M.nobalance.mcool \
  ../DRP-5-7-25_100M.bedpe  ../DRP-5-7-25_100M.nobalance.mcool \
  GRCh38 /data1/zhanglu/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes  \
  /data1/zhanglu/zhanglu/tmp/hitag/fig/unionLoop_corr/10M-100M

bash union_loopcorr.sh  \
  25M 50M \
  ../DRP-5-7-25_25M.bedpe  ../DRP-5-7-25_25M.nobalance.mcool \
  ../DRP-5-7-25_50M.bedpe  ../DRP-5-7-25_50M.nobalance.mcool \
  GRCh38 /data1/zhanglu/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes  \
  /data1/zhanglu/zhanglu/tmp/hitag/fig/unionLoop_corr/25M-50M


bash union_loopcorr.sh  \
  25M 100M \
  ../DRP-5-7-25_25M.bedpe  ../DRP-5-7-25_25M.nobalance.mcool \
  ../DRP-5-7-25_100M.bedpe  ../DRP-5-7-25_100M.nobalance.mcool \
  GRCh38 /data1/zhanglu/zhanglu/tmp/hitag/GRCh38/GRCh38.primary_assembly.genome_no_scaff.fa.sizes  \
  /data1/zhanglu/zhanglu/tmp/hitag/fig/unionLoop_corr/25M-100M
