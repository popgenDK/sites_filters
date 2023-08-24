# Pipeline to identify regions showing excess of heterozygosity and remove them from analyses

Excess of heterozygosity can be used to identify genomic regions with mismapping due to having paralogous or duplicate copies. This pipeline is targeted at low depth data when we do not want to call genotypes.
It starts from bam files to call SNPs and estimate genotype likelihoods, and use them in PCAngsd to perform a site specific HWE test that accounts for population structure.

The config file needs:
- info: file with bamfile in column1 and population assignment in column2 path to bamfile. Population is just for visualization, if unknown can be set to arbitrary value for all
- chroms: path to file with list of chromosomes to use
- ref: path to reference
- outmain: path to main output
  - params:
      - angsd:
           - minQ: value
           - minMapQ: value
      - pcangsd:
           - e: list of number principal components to try for hwe filter, if dont' know set to 0 and pcangsd infers it
       - filter:
           - w: size in kb of window to remoe around "bad" site
           - minF: F below which significantly deviating loci are removed
          - lrt: likelihood ratio test statistic threshold to assign signficiance (e.g. lrt 24 equivales pvalue of 1e-6)
      - scriptsdir: path to directory with requried scripts
