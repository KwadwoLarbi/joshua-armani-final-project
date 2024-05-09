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
The QIIME2 bioinformatics platform was employed to process and analyze the preprocessed sequencing data. The pipeline included steps for denoising, taxonomic classification, diversity analysis, and functional annotation of genomic features.https://docs.qiime2.org/2024.2/tutorials/phylogeny/

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


## CONCLUSION AND FINAL REMARK
There were a lot of plot we could include because we don’t know how to interpret them.

There were a lot of plot we could include because we don’t know how to interpret them.

All codes used in this project and short explanations for each tool are found in our github repo in the code.sh file 


## BIBLIOGRAPHY
1. Yao M, Zhang S, Lu Q, Chen X, Zhang SY, Kong Y, Zhao J. 2022. Fishing for fish environmental DNA: ecological applications, methodological considerations, surveying designs, and ways forward. Mol Ecol. 31:5132–5164.
   
2. Rosen MJ, Callahan BJ, Fisher DS, Holmes SP. 2012. Denoising PCR-amplified metagenome data. BMC Bioinformatics 13:283. Sato Y, Miya M, Fukunaga T, Sado T, Iwasaki W. 2018. MitoFish and MiFish pipeline: a mitochondrial genome database of fish with an analysis pipeline for environmental DNA metabarcoding. Mol Biol Evol. 35:1553–1555

3. Xiong F, Shu L, Gan X, Zeng H, He S, Peng Z. 2022. Methodology for fish biodiversity monitoring with environmental DNA metabarcoding: the primers, databases and bioinformatic pipelines. Water Biol Secur. 1:100007

4. Zhu, Τ., Sato, Y., Sadõ, T., Miya, M., & Iwasaki, W. (2023). MiToFish, MitoAnnotator, and MiFISH Pipeline: Updates in 10 years. Molecular Biology and Evolution, 40(3). https://doi.org/10.1093/molbev/msad035 





