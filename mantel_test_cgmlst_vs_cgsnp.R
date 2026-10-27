library(vegan)
 
d1 <- as.matrix(read.table("allelic_distance_matrix.tsv", skip = 1, row.names = 1))   
d2 <- as.matrix(read.table("cgsnp_matrix_final_renamed.tsv", header = TRUE, row.names = 1,
                           sep = "\t", check.names = FALSE, quote = "", comment.char = "")) 
colnames(d1) <- rownames(d1)
 
ids <- intersect(rownames(d1), rownames(d2))
stopifnot(length(ids) == nrow(d1), length(ids) == nrow(d2))     # all 115 isolates in both
 
mantel(as.dist(d1[ids, ids]), as.dist(d2[ids, ids]), method = "spearman", permutations = 9999)
 
