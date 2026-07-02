################################################################################
#                                PACKAGES TO LOAD                              #
################################################################################

cat("\n* General packages...\n")
install.packages.auto("readr")
install.packages.auto("optparse")
install.packages.auto("tools")
install.packages.auto("dplyr")
install.packages.auto("tidyr")
install.packages.auto("tidylog")
library("tidylog", warn.conflicts = FALSE)
install.packages.auto("naniar")

# To get 'data.table' with 'fwrite' to be able to directly write gzipped-files
# Ref: https://stackoverflow.com/questions/42788401/is-possible-to-use-fwrite-from-data-table-with-gzfile
# install.packages("data.table", repos = "https://Rdatatable.gitlab.io/data.table")
library(data.table)

install.packages.auto("tidyverse")
install.packages.auto("knitr")
install.packages.auto("DT")

install.packages.auto("org.Hs.eg.db")
install.packages.auto("mygene")
install.packages.auto("EnhancedVolcano")

install.packages.auto("haven")
install.packages.auto("tableone")

# For a more efficient implementation of the Wilcoxon Rank Sum Test,
# (default method for FindMarkers) please install the limma package
# --------------------------------------------
install.packages.auto('BiocManager')
# BiocManager::install('limma')
library('limma')
# --------------------------------------------
#   After installation of limma, Seurat will automatically use the more 
# efficient implementation (no further action necessary).
# This message will be shown once per session

# Presto is needed for a much faster implementation of the FindMarkers() function in Seurat
library('devtools')
devtools::install_github('immunogenomics/presto')
library("presto")

# Install the devtools package from Hadley Wickham
library('devtools')
# Replace '2.3.4' with your desired version
# devtools::install_version(package = 'Seurat', version = package_version('2.3.4'))
install.packages.auto("Seurat")
library("Seurat")

# UCell: robust gene module scoring for single-cell data
# Used for CytoGMS (cytotoxicity gene module score) in scRNAseq analysis
# Ref: Andreatta et al. (2021) Comput Struct Biotechnol J, doi:10.1016/j.csbj.2021.06.020
if (!requireNamespace("UCell", quietly = TRUE)) {
  BiocManager::install("UCell")
}
library("UCell")
