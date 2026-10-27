library(ape)

lines <- readLines("all_vs_all_ani.tsv.matrix")
n <- as.integer(lines[1])
genomes <- character(n)
mat <- matrix(100, n, n)

for (i in 1:n) {
  parts <- strsplit(lines[i+1], "\t")[[1]]
  genomes[i] <- parts[1]
  if (length(parts) > 1) {
    vals <- as.numeric(parts[-1])
    mat[i, 1:length(vals)] <- vals
    mat[1:length(vals), i] <- vals
  }
}

rownames(mat) <- colnames(mat) <- genomes
d <- 1 - (mat / 100)
diag(d) <- 0
hc <- hclust(as.dist(d), method = "average")
write.tree(as.phylo(hc), file = "fastani_UPGMA.nwk")
