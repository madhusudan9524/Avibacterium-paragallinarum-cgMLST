# Avibacterium paragallinarum cgMLST analysis scripts

Scripts used for the genomic analyses in:

**Development of a standardized core genome MLST enables high-resolution epidemiological investigation of Avibacterium paragallinarum**

Madhusudan Timilsina1, Amro Hashish2, Mostafa Ghanem1,†
1Department of Veterinary Medicine, Virginia-Maryland College of Veterinary Medicine, University of Maryland, College Park, USA
2Department of Veterinary Diagnostic and Production Animal Medicine, College of Veterinary Medicine, Iowa State University, Ames, Iowa, USA


Scripts
fastani_ani_clustering.py: Dereplication of genomes by single-linkage clustering at ≥99.9% ANI 
fastani_matrix_2_upgma_tree.R:  UPGMA tree from pairwise ANI distances (1 − ANI/100)
mantel_test_cgmlst_vs_cgsnp.R: Mantel test (Spearman, 9,999 permutations) comparing cgMLST allelic distances with cgSNP distances 
pangenome_heaps_rarefaction.R: Pangenome accumulation curve and Heaps' law estimate of pangenome openness. For Heaps' law, α < 1 indicates an open pangenome and α > 1 a closed pangenome.

## Usage
Run each script from the folder containing its input files:
python3 fastani_ani_clustering.py
Rscript fastani_matrix_2_upgma_tree.R
Rscript mantel_test_cgmlst_vs_cgsnp.R
Rscript pangenome_heaps_rarefaction.R

## Requirements
- Python 3 with numpy
- R with the packages ape, vegan and micropan
- FastANI v1.34  and Panaroo v1.8.0 to generate the input files

## Citation
Please cite the paper above if you use these scripts.

## License
MIT

## Contact
Madhusudan Timilsina, University of Maryland, College Park, USA (madhutim@umd.edu)
