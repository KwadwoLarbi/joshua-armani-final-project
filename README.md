# joshua-armani-final-project
Final Bioinformatic Project Spring 2024
## THE STUDY BACKGROUND
Data from fish genome sequencing studies conducted in the Great Bay and Wells regions were utilized to perform comprehensive genomic analysis following the methods outlined [the provided link](https://github.com/jthmiller/eDNA-metabarcoding-intro/tree/mifish-intro?tab=readme-ov-file)

The final presentation summarizing the findings of the genomic analysis can be accessed via [the provided link](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project). All the code utilized for this project is accessible within this README.md, ensuring transparency and reproducibility of the analysis steps.

## METHOD

#### PERMANOVA: Group significance plots
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/1a.png)

#### 1. Data Collection: 
Raw sequencing reads (FASTQ format) were provided for further analysis on the ron platform.

#### 2. Data Preprocessing: 
Fastp software was used to perform quality control and trimming of raw sequencing reads to remove low-quality bases and adapter sequences. 

#### 3. Genomic Analysis Pipeline: 
The QIIME2 bioinformatics platform was employed to process and analyze the preprocessed sequencing data. The pipeline included steps for denoising, taxonomic classification, diversity analysis, and functional annotation of genomic features.

#### 4. Denosing and Taxonomic Classification: 
The DADA2 algorithm was applied for denoising paired-end sequencing data, generating high-quality amplicon sequence variants (ASVs). Taxonomic classification of ASVs was performed using reference databases to assign taxonomic labels to the sequences.

#### 5. Diversity Analysis: 
Core metrics analysis was conducted to assess alpha and beta diversity measures across samples. This involved computing diversity indices and generating rarefaction curves to visualize species richness and evenness.



## RESULTS 
#### Data Preprocessing: quality control and trimming reads

![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/1.png)

#### Data Preprocessing: quality control and trimming reads
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/2.png)

#### Data Preprocessing: quality control and trimming reads
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/3.png)

#### Data Preprocessing: quality control and trimming reads
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/4.png)

#### Denoising: Great Bay
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/5.png)

#### Denoising: Wells
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/6.png)

#### Taxonomic Assignment
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/7.png)


#### Taxonomic Classification
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/8.png)

#### phylogenetic placement of ASVs
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/9.png)

#### Diversity Statistics: Beta diversity
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/11.png)
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/12.png)

#### Diversity Statistics: Alpha diversity
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/13.png)

#### PERMANOVA: Group significance plots
![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/14.png)


## CONCLUSION 

## BIBLIOGRAPHY
