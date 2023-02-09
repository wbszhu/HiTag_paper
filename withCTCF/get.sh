#wget https://jaspar.genereg.net/api/v1/matrix/MA0139.1.meme
#fimo MA0139.1.meme ~/22.genome/GRCh38/GRCh38.primary_assembly.genome.fa
awk 'BEGIN{FS="\t";OFS="\t"}{print  $3,$4,$5,$6,$7,$8,$9,$10}' fimo_out/fimo.tsv > CTCF.motif.bed.tmp
grep 'sequence_name'  -v CTCF.motif.bed.tmp > CTCF.motif.bed
sed -i '/^\s*$/d' CTCF.motif.bed
rm -rf CTCF.motif.bed.tmp
