path_rep1=../DRP-25.results/mcool/DRP-25.balance.mcool                                                                      
path_rep2=../DRP-57.results/mcool/DRP-57.balance.mcool

hicPlotDistVsCounts -m \
${path_rep1}::/resolutions/10000 \
${path_rep2}::/resolutions/10000 \
-o counts_vs_dist_100k_bins.pdf \
--labels 'rep1' 'rep2' \
--maxdepth 1000000000 \
--plotsize 5 4.2 \
--skipDiagonal \
--chromosomeExclude chrY chrX chrM
