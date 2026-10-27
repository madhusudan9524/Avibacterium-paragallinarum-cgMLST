import numpy as np
genomes, rows = [], []
with open("all_vs_all_ani.tsv.matrix") as f:
    next(f)
    for line in f:
        parts = line.strip().split('\t')
        genomes.append(parts[0])
        rows.append([float(x) for x in parts[1:]])
n = len(genomes)
mat = np.zeros((n, n))
for i, row in enumerate(rows):
    for j, val in enumerate(row):
        mat[i, j] = val
        mat[j, i] = val
np.fill_diagonal(mat, 100)
parent = list(range(n))
def find(x):
    while parent[x] != x: parent[x] = parent[parent[x]]; x = parent[x]
    return x
for i in range(n):
    for j in range(i+1, n):
        if mat[i, j] >= 99.9:
            parent[find(i)] = find(j)
roots = sorted(set(find(i) for i in range(n)), key=lambda r: [find(i) for i in range(n)].index(r))
cid = {r: k+1 for k, r in enumerate(roots)}
with open("clusters_99.9.tsv", "w") as out:
    for i, g in enumerate(genomes):
        out.write(f"{g}\tC{cid[find(i)]}\n")
