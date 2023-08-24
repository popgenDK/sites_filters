# Pipelines for perfroming sites QC

Identify bad regions from reference genome to remove them from analyses, based on different criteria.

We can distinguish the criteria by whether they are based exclusively on the reference genome (repeat masker, mappability) or they combine information from both the resequenced samples and the reference genome (depth, excess heterozygosity).

Pipelines based on reference genome are inside the `referencebased` folder.

For those based on samples there are two folders with different pipelines:

 - samplesbased_genolikes: pipeline for low depth data; where the re sequencing data based pipelines take a list of bamfiles and work directly from there.

 - samplesbased_genocalls: pipeline for data where genotypes have been called; the re sequencing based pipeline take a bcf file with called genotypes and work from there.


Additional details can be found inside each folder.

