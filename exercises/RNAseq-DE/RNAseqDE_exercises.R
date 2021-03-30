# Exercise 1
# The matrix of counts in "exercise1/counts1.txt" stores RNA-Seq experiment data retrieved from 24 human samples 
# in two different conditions (12 controls and 12 cases). The first 12 samples are cases, while the remaining 
# subjects are controls.
#
#   - Normalize the data
# 	- Retrieve the differentially expressed genes between the groups with FDR of 10%
#   - Show genes that are more variable among clusters (show pheatmap)
#   - Retrieve the top significant 20 DE genes 
#   - Genes are stored using ENSAMBL id (in rownames). Retrive SYMBOL and ENTREZID and store them as columns.
#
# --------------------------------------------------------------------------------------------------------------


# Exercise 2
# The matrix of counts in the file "exercise2/counts2.txt" stores RNA-Seq experiment data from 20 human samples
# in normal condition and 20 in tumor condition.
#
# Retrieve the differentially expressed genes between the 2 groups. Perform the analysis focusing on:
#   - Discard genes that do not have at least one read in all the samples
#   - Use the Variance stabilizing transformation for the exploratory analysis
#   - Show genes that are more variable among clusters
#   - Show PCA clustering results
#   - Use FDR 5% and log2FC = 1
#   - Retrieve only genes that are significantly differentially expressed
#   - Retrieve the top significant 10 DE genes based on log2FC (consider both over- and under-expressed)
#
# --------------------------------------------------------------------------------------------------------------


# Exercise 3
# Unzip exercise3.zip.
#
# Load all data as DESeqDataSet object.
#
# Hint: use DESeqDataSetFromHTSeqCount(sampleTable, directory = ".", design, ...)

data.directory <- "/path/to/data/directory"
  
sampleFiles <- grep("cut.txt",list.files(data.directory),value=TRUE)

sampleCondition <- c("healthy","healthy","healthy","healthy","healthy","healthy","trt","trt","trt","trt","trt","trt")

sampleTable <- data.frame(sampleName = ,
                         fileName = ,
                         condition = )

dds = DESeqDataSetFromHTSeqCount(  )


# Compute DE analysis.
# Export results in CSV and HTML reports.
#
# --------------------------------------------------------------------------------------------------------------


#Exercise 4
# Download TGCA Data for disease UCEC (only RNASeqGene assay).
#
# Create a SummarizedExperiment from the MultiAssayExperiment you downloaded during the previous step. Follow the 
# following assignments while building the SummarizedExperiment object:
#   - colData = only relevant columns (Hints: use getClinicalNames and vital status as group in formula )
#   - assay = extract from MultiAssayExperiment, convert colnames (in complete TGCA barcode format) to match 
#             the rownames of colData (only partecipant in TGCA barcode format) 
# Hint: there are some duplicated columns in the assay.
#
# Compute differentially expressed genes analysis using DEseq2 workflow.
# Genes are stored as SYMBOL, convert them to ENTREZID before doing the analysis.
