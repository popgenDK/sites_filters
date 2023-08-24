# adapted from script made by Kristian for leoaprd in /home/leopard/users/krishang/bed_region/get_nonrepeatmask.sh

PYTHON=python3
GETUPPER=get_upper.py
BEDOPS=/home/krishang/software/bedops/bin/bedops

ref=/davidData/data/genis/impala/ref/goat/goat_ref_renamed.fa # path to the fasta file of soft masked reference genome
bed=goatNonRepeat.bed # name for output bed will have non repetitive regions

$PYTHON $GETUPPER $ref | $BEDOPS -m - > $bed

# if you prefer to use bedtools instead of bedops, this should also work (it is slower)
#BEDTOOLS=/home/genis/software/bedtools2/bin/bedtools
#$PYTHON $GETUPPER $ref | $BEDTOOLS merge > $bed
