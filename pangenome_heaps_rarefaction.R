library(micropan)
library(vegan)

raw <- read.csv("gene_presence_absence.csv", check.names = FALSE, stringsAsFactors = FALSE)
pa <- (raw[, -(1:3)] != "") * 1
pa[is.na(pa)] <- 0
df_t <- t(pa)

set.seed(2026)
heap <- heaps(df_t, n.perm = 1000)
heap

set.seed(2026)
rf <- specaccum(df_t, "random", permutations = 1000)
plot(rf, ci.type = "poly", col = "darkblue", lwd = 2, ci.lty = 0, ci.col = "lightblue3",
     xlab = "Number of genomes", ylab = "Number of gene families",
     ylim = c(0, max(rf$richness + rf$sd) * 1.05))
legend("bottomright", legend = paste("\u03B1 =", round(heap["alpha"], 2)), bty = "n", text.font = 2)
