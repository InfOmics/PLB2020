# ----------------------------------------------------------------------------------------------
#
# Exercise 1
#
# Recover data from the previous exercise on SARS-Cov2 infection. Consider the object 
# obtained after applying deAna() function.
#
# Extract logFoldChanges and adjusted p-values and store them into a new variable 
# called expr_data.

# Instantiate STRINGdb's reference class (remember we are working with Human data).
# Apply a threshold of 300.

# We now must map gene identifiers to STRINGdb's identifiers.
#
# Type "map()" on your R console and see how it works.
# What does it take as input? What do we need to change (or better, add)?
# 
# Modify expr_data by mapping genes identifiers.

# Take the first 100 most significant genes and plot their network(s).

# Plot significant genes (ADJ.PVAL < 0.05) and show their expression levels.

# Perform enrichment on the top 100 genes (most significant genes).



# ----------------------------------------------------------------------------------------------
#
# Exercise 2
#
# Recover data from RNA-seq analisys of exercise 1 in DeSeq exercises.
#
# Recompute differential expression analisys.

# Map gene identifiers to STRINGdb's identifiers.

# Extract the most significant 200 genes. Store images of their STRINGdb's networks.

# Perform enrichment using KEGG on the 200 most significant genes and show the results.

# Compute clustering using edge.betweenness and plot the first cluster.


