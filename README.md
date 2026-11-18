# Avibacterium paragallinarum cgMLST analysis scripts

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Scripts used for the genomic analyses in:

**A standardized core genome MLST scheme for *Avibacterium paragallinarum* traces outbreaks and reveals region-specific lineages**

Madhusudan Timilsina<sup>1</sup>, Amro Hashish<sup>2</sup>, Keith A. Jolley<sup>3</sup>, Mostafa Ghanem<sup>1,&dagger;</sup>

<sup>1</sup>Department of Veterinary Medicine, Virginia-Maryland College of Veterinary Medicine, University of Maryland, College Park, USA<br>
<sup>2</sup>Department of Veterinary Diagnostic and Production Animal Medicine, College of Veterinary Medicine, Iowa State University, Ames, Iowa, USA<br>
<sup>3</sup>Department of Biology, University of Oxford, Oxford, UK<br>
<sup>&dagger;</sup>Correspondence: Mostafa Ghanem (mghanem@umd.edu)

## Data and scheme availability

The cgMLST scheme, isolate records, allelic profiles and allele sequences are hosted on [PubMLST](https://pubmlst.org/organisms/avibacterium-paragallinarum).<br>
Genome assemblies analyzed in this study are available in NCBI GenBank (accessions in Supplementary Table S1).<br>
Raw reads are available in the NCBI SRA under BioProject [PRJNA1044294](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA1044294) (previously published strains) and [PRJNA1453598](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA1453598) (newly sequenced strains).

## Scripts

`fastani_ani_clustering.py`: Dereplication of genomes by single-linkage clustering at &ge;99.9% ANI<br>
`fastani_matrix_2_upgma_tree.R`: UPGMA tree from pairwise ANI distances (1 &minus; ANI/100)<br>
`mantel_test_cgmlst_vs_cgsnp.R`: Mantel test (Spearman, 9,999 permutations) comparing cgMLST allelic distances with cgSNP distances<br>
`pangenome_heaps_rarefaction.R`: Pangenome accumulation curve and Heaps' law estimate of pangenome openness. For Heaps' law, &alpha; &lt; 1 indicates an open pangenome and &alpha; &gt; 1 a closed pangenome.

## Usage

Run each script from the folder containing its input files:
```
python3 fastani_ani_clustering.py
Rscript fastani_matrix_2_upgma_tree.R
Rscript mantel_test_cgmlst_vs_cgsnp.R
Rscript pangenome_heaps_rarefaction.R
```

## Requirements

Python 3 with `numpy` (see `requirements.txt`; install with `pip install -r requirements.txt`)<br>
R with the packages `ape`, `vegan` and `micropan`<br>
[FastANI](https://github.com/ParBLiSS/FastANI) v1.34 and [Panaroo](https://github.com/gtonkinhill/panaroo) v1.8.0 to generate the input files

## How to cite

## License

MIT &mdash; see [LICENSE](LICENSE).

## Contact

Mostafa Ghanem (corresponding author), University of Maryland, College Park, USA (mghanem@umd.edu)

