# ----------------------------------------------------------------------------------------------
#
# Exercise 1
#
# Consider the series GSE87495 from the GEO platform
# This series contains 6 samples of human cells in two conditions:
#   - 3 samples treated with doxycycline
#   - 3 samples with no doxycycline
# Read the csv file "GSE87495_counts.csv" into a data.frame object.
# The last 6 columns contain the counts for each sample. 
#
# Change the samples names, using the names defined in the 
# variable "samples". (HINT: samples names are on the columns of the 
# data.frame object).

samples <- c("no_dox_1", "with_dox_2", "no_dox_3",
            "with_dox_4", "no_dox_5", "with_dox_6")


# Create SummarizedExperiment object, by subsetting data.frame's 
# (counts and genes). Assign colnames and rownames to the SE object accordingly.
# (HINT: 'counts' must be stored in matrix objects).
# (HINT: 'genes' can be stored in data.frames).
# (HINT: add GROUP variable on ColData, by setting no_dox GROUP=0, with_dox=1).


# Normalize counts.


# Perform differential expression analysis. 
# (HINT: use enrichmentBrowser's deAna()).
# (HINT: inspect rowData() before and after DE).


# Conduct set-bases enrichment.
# 1. create gene sets:
#   - use the function getGenesets to download all KEGG pathways (Homo sapiens) as gene sets.
#   - use the function getGenesets to retrieve GO terms. Use biological process (BP) ontology 
#     (defined in the GO.db annotation package).
# 2. Perform enrichment for both gene sets. Use your favourite method.
# 3. Show results. (HINT: use gsRanking() and eaBrowse()).



# Perform network-based enrichment.
# 1. Compile a gene regulatory network from KEGG pathway databases (organism Homo Sapiens)
# 2. Conduct network-based enrichment. Use your favourite method.
# 3. Show results (HINT: use gsRanking()) 
# 4. Plot Gene graph enrichment analysis (GGEA) for pathway "hsa04913_Ovarian_steroidogenesis".
#    Add the legend.



# Combine results. Display the results obtained by combining (use eaBrowse()):
# 1. set-based and network-based enrichemnts obtained using KEGG gene sets
# 2. two different set-based enrichment methods (gene sets from GO)
# 3. two different methods of network-based enrichment



# ----------------------------------------------------------------------------------------------
#
# Exerecise 2
#
# Which pathways are affected by COVID-19 development?
#
# The file SARS-CoV-2_infection.csv contains data about the transcriptional response
# of human lung epithelial cells to SARS-CoV-2 infection.
# It contains 6 samples. Three samples are mock treated (control), the remaning three
# are infected with SARS-Cov-2.
#
# Read data in a data.frame object.

# Create a SummarizedExperiment object from the data.frame.

# Which is the current gene identifier?
# To perform enrichment later, we need to convert gene identifiers into ENTREZID. 
# Map gene identifiers to the corresponding ENTREZIDs.

# Define colData by creating a data.frame having:
# - samples names as row names
# - a column GROUP with three 0s and three 1s

# Normalize data and perform differential expression analysis.

# Use KEGG to perform a set-based enrichment analysis. Use ora and gsea methods.

# Use KEGG to perform a network-based enrichment analysis using spia method.

# Show results for all methods.

# Combine all the obtained results and show the first 5 pathways.



# ----------------------------------------------------------------------------------------------
#
#Exercise 3
#
# Download TGCA Data for UCEC disease (only RNASeqGene assay).
# 
# Extract a SummarizedExperiment object from the downloaded MultiAssayExperiment.
# Use only relevant columns as colData. Consider only RNASeqGene experiments.
# (HINT: use getClinicalNames, GROUP as vital status).
# (HINT: check for duplicates (replicated mergeReplicate)).
# (HINT: use getWithColData() to extract the SE).

# Perform differential expression analysis.
# (HINT: use enrichmentBrowser's deAna()).

# Conduct set-based (only KEGG) and network-based enrichment analyses. Use your 
# favourite method(s).
# (HINT: genes are stored as SYMBOL. Before carrying out the analysis, you nees
# to map genes sybols to the corresponding ENTREZIDs).

# Show both results.



