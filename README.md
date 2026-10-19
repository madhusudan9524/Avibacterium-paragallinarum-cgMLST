# Avibacterium paragallinarum cgMLST, cgSNP and serotyping analysis

Code and workflows for the genomic analyses in:

## Overview
This repository contains the scripts and commands used to:
1. Check genome quality (QUAST, CheckM) and species identity (FastANI).
2. Build and evaluate a cgMLST scheme for *A. paragallinarum* (implemented in PubMLST).
3. Calculate core-genome SNP distances and phylogeny (Snippy, Gubbins, snp-sites, snp-dists, IQ-TREE).
4. Predict Kume serovars from the HMTp210 gene.
5. Compare typing methods (cgMLST, six-locus MLST, cgSNP) by discriminatory power (Hunter-Gaston index), concordance (adjusted Rand and Wallace) and Mantel tests.
6. Generate GrapeTree and iTOL metadata files.

## Repository structure
- `scripts/`  analysis scripts and Slurm job files
- `envs/`     conda environment files with software versions
- `metadata/` isolate lists, PubMLST identifiers, loci removed from the scheme, serotype table
- `docs/`     step-by-step description of each analysis

## Software
QUAST 5.3.0, CheckM [version], FastANI [version], Snippy [version], Gubbins [version],
snp-sites [version], snp-dists 1.2.0, IQ-TREE 2.4.0, MAFFT [version], GrapeTree [version],
R (vegan) [version]. Exact versions are in `envs/`.

## Data
Genome accessions are listed in `metadata/`. Assemblies are not included in this repository.
The cgMLST scheme is available in PubMLST: [link].

## Usage
Scripts are listed in the order they were run in `docs/`.
Example (Hunter-Gaston index):
`python scripts/hgdi.py profiles.tsv "cgST (cgMLST)"`

## Citation
Please cite the paper above if you use this code.

## License
MIT (see LICENSE)

## Contact
Madhusudan Timilsina, University of Maryland, College Park, USA madhutim@umd.edu
