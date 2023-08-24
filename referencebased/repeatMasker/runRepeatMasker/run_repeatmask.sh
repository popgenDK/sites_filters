#!/bin/bash

RepeatMasker=/home/users/xiaodong/Software/RepeatMasker/RepeatMasker

# Giraffe
$RepeatMasker  -pa 40  -frag 50000 -species Mammalia /jbod1/mikkel/projects/202103_africa1k/genomes/RothschildsGiraffe.fasta \
                                      -dir /home/users/xiaodong/Documents/Project/African1kg/Giraffe/Repeatmasker/ -xm -xsmall -gff \
                                      2>&1 > /home/users/xiaodong/Documents/Project/African1kg/Giraffe/Repeatmasker/Giraffe.log


# Okapi
$RepeatMasker -pa 40  -frag 50000 -species Mammalia /jbod1/mikkel/projects/202103_africa1k/genomes/Okapi.fasta \
                                      -dir /home/users/xiaodong/Documents/Project/African1kg/Giraffe/Repeatmasker/ -xm -xsmall -gff \
                                      2>&1 > /home/users/xiaodong/Documents/Project/African1kg/Giraffe/Repeatmasker/Okapi.log
