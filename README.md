# joshua-armani-final-project
Final Bioinformatic Project Spring 2024
## THE STUDY BACKGROUND
Data from fish genome sequencing studies conducted in the Great Bay and Wells regions were used to perform comprehensive genomic analysis following the methods outlined in [established bioinformatics](https://github.com/jthmiller/eDNA-metabarcoding-intro/blob/Gen711-811/README.md) and the QIIME tutorials website. 

The final presentation summarizing the findings of the genomic analysis can be accessed via (https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project). 

All the code used for this project is accessible under the code tabs within the method sections, ensuring transparency and reproducibility of the analysis steps. Assembling the genomic data into a coherent narrative allowed for the generation of figures and results that can be shared and discussed within the scientific community, contributing to our understanding of fish biodiversity and informing conservation and management strategies in coastal areas.

## METHOD
#### 1. Data Collection: 
Raw sequencing reads (FASTQ format) were provided for further analysis were available on RON platform.
#### 2. Data Preprocessing: 
Fastp software was used to perform quality control and trimming of raw sequencing reads to remove low-quality bases and adapter sequences. 
#### 3. Genomic Analysis Pipeline: 
The QIIME2 bioinformatics platform was employed to process and analyze the preprocessed sequencing data. The pipeline included steps for denoising, taxonomic classification, diversity analysis, and functional annotation of genomic features.
#### 4. Denosing and Taxonomic Classification:
   The DADA2 algorithm was applied for denoising paired-end sequencing data, generating high-quality amplicon sequence variants (ASVs). 
   Taxonomic classification of ASVs was performed using reference databases to assign taxonomic labels to the sequences.
#### 5. Diversity Analysis: 
Core metrics analysis was conducted to assess alpha and beta diversity measures across samples. 

## RESULTS 


## CONCLUSION 

## BIBLIOGRAPHY
