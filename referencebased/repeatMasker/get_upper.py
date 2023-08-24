#!/usr/bin/env python3
import pysam
import sys

ref_f = sys.argv[1]
fai_f = ref_f+".fai"
s = []
with open(fai_f, 'r') as fh:
    for line in fh:
        fields = line.rstrip().split()
        s.append(fields[0])


with pysam.FastaFile(ref_f) as fh:
    for chrom in s:
        seq = fh.fetch(chrom, None, None)
        for idx, c in enumerate(seq):
            if c.isupper():
                print(f"{chrom}\t{idx}\t{idx+1}")
#~/software/vir_python36/bin/python scripts/get_lower2.py $ref |  ~/software/bedops/bin/bedops -m - > nonrepeat.bed
