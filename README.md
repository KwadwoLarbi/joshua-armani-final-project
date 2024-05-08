# joshua-armani-final-project
Final Bioinformatic Project Spring 2024
## THE STUDY BACKGROUND
Data from fish genome sequencing studies conducted in the Great Bay and Wells regions were utilized to perform comprehensive genomic analysis following the methods outlined [the provided link](https://github.com/jthmiller/eDNA-metabarcoding-intro/tree/mifish-intro?tab=readme-ov-file)

The final presentation summarizing the findings of the genomic analysis can be accessed via [the provided link](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project). All the code utilized for this project is accessible within this README.md, ensuring transparency and reproducibility of the analysis steps.

## METHOD
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

# CODE FOR ANANLYSIS
## cloning Github directory 
git clone https://github.com/KwadwoLarbi/oshua-armani-qiayra_final-project/.git
git status
gt add READMEd
git status 
git commit -m "updted by Joshua"


#######################  FOR GREATBAY #####################################

### 1. Run Fastp to trim the 'poly-g' tails of the reads

mkdir GB_trimmed

COMMAND:    ./fastp.sh 150 ./ ./GB_trimmed


### 2. Import the directory of reads with qiime and save the output in your directory

COMMAND:

 qiime tools import \  
--type "SampleData[PairedEndSequencesWithQuality]"  \
--input-format CasavaOneEightSingleLanePerSampleDirFmt  \
--input-path ~/joshua-armani-qiayra_final-project/Raw_reads/GreatBay/GB_trimmed \  
--output-path ~/joshua-armani-qiayra_final-project/Raw_reads/GreatBay/GB_trimmed.qza

### 3. Use the 'cutadapt' program in qiime to trim off the primers

mkdir cutadapt

qiime cutadapt trim-paired \
    --i-demultiplexed-sequences ~/joshua-armani-qiayra_final-project/Raw_reads/GreatBay/GB_trimmed.qza \
    --p-cores 4 \
    --p-front-f GTCGGTAAAACTCGTGCCAGC \
    --p-front-r CATAGTGGGGTATCTAATCCCAGTTTG \
    --p-match-adapter-wildcards \
    --verbose \
    --o-trimmed-sequences ~/joshua-armani-qiayra_final-project/Raw_reads/GreatBay/cutadapt/cutadapt-summary.qza

qiime demux summarize \
    --i-data ~/joshua-armani-qiayra_final-project/Raw_reads/GreatBay/GB_trimmed.qza \
    --o-visualization ~/joshua-armani-qiayra_final-project/Raw_reads/GreatBay/cutadapt/cutadapt-summary.qzv

DOWNLOAD:
scp -r ja1453@ron.sr.unh.edu:/home/users/ja1453/joshua-armani-qiayra_final-project/Raw_reads/GreatBay/cutadapt /c/Users/ja1453/Downloads/


### 4.Start the denoising the reads (removing the low quality reads/bases)

mkdir Results_GB

qiime dada2 denoise-paired \
    --i-demultiplexed-seqs ~/joshua-armani-qiayra_final-project/Raw_reads/GreatBay/cutadapt/cutadapt-summary.qza  \
    --p-trunc-len-f  120 \
    --p-trunc-len-r 115 \
    --p-trim-left-f 0 \
    --p-trim-left-r 0 \
    --p-n-threads 4 \
    --o-denoising-stats ~/joshua-armani-qiayra_final-project/Results_GB/denoising-stats-1.qza \
    --o-table ~/joshua-armani-qiayra_final-project/Results_GB/feature_table-1.qza \
    --o-representative-sequences ~/joshua-armani-qiayra_final-project/Results_GB/rep-seqs-1.qza

qiime metadata tabulate \
    --m-input-file ~/joshua-armani-qiayra_final-project/Results_GB/denoising-stats-1.qza \
    --o-visualization ~/joshua-armani-qiayra_final-project/Results_GB/denoising-stats-1.qzv

qiime feature-table tabulate-seqs \
        --i-data ~/joshua-armani-qiayra_final-project/Results_GB/rep-seqs-1.qza \
        --o-visualization ~/joshua-armani-qiayra_final-project/Results_GB/rep-seqs-1.qzv


#######################  FOR WELL #####################################

### 1. Run Fastp to trim the 'poly-g' tails of the reads
mkdir -p Well_trimmed Well

 ./fastp.sh 150 ./ ./Well_trimmed

 ### 2. Import the directory of reads with qiime and save the output in your directory
mkdir Raw_reads

qiime tools import \
  --type "SampleData[PairedEndSequencesWithQuality]" \
  --input-format CasavaOneEightSingleLanePerSampleDirFmt \
  --input-path ~/joshua-armani-qiayra_final-project/Raw_reads/Wells/Well_trimmed \
  --output-path ~/joshua-armani-qiayra_final-project/Raw_reads/Wells/Well_trimmed.qza

##################################################################

### 3. Use the 'cutadapt' program in qiime to trim off the primers

qiime cutadapt trim-paired \
    --i-demultiplexed-sequences ~/joshua-armani-qiayra_final-project/Raw_reads/Wells/Well_trimmed.qza \
    --p-cores 4 \
    --p-front-f GTCGGTAAAACTCGTGCCAGC \
    --p-front-r CATAGTGGGGTATCTAATCCCAGTTTG \
    --p-match-adapter-wildcards \
    --verbose \
    --o-trimmed-sequences ~/joshua-armani-qiayra_final-project/Raw_reads/Wells/cutadapt/cutadapt-well-summary.qza

qiime demux summarize \
    --i-data ~/joshua-armani-qiayra_final-project/Raw_reads/Wells/Well_trimmed.qza \
    --o-visualization ~/joshua-armani-qiayra_final-project/Raw_reads/Wells/cutadapt/cutadapt-well-summary.qzv

DOWNLAODING: 
scp -r ja1453@ron.sr.unh.edu:/home/users/ja1453/joshua-armani-qiayra_final-project/Raw_reads/Wells/cutadapt /c/Users/ja1453/Downloads/



### 4. Start the denoising the reads (removing the low quality reads/bases)

mkdr Results_Well

qiime dada2 denoise-paired \
    --i-demultiplexed-seqs ~/joshua-armani-qiayra_final-project/Raw_reads/Wells/cutadapt/cutadapt-well-summary.qza  \
    --p-trunc-len-f  120 \
    --p-trunc-len-r 115 \
    --p-trim-left-f 0 \
    --p-trim-left-r 0 \
    --p-n-threads 4 \
    --o-denoising-stats ~/joshua-armani-qiayra_final-project/Results_Well/denoising-stats-2.qza \
    --o-table ~/joshua-armani-qiayra_final-project/Results_Well/feature_table-2.qza \
    --o-representative-sequences ~/joshua-armani-qiayra_final-project/Results_Well/rep-seqs-2.qza

qiime metadata tabulate \
    --m-input-file ~/joshua-armani-qiayra_final-project/Results_Well/denoising-stats-2.qza \
    --o-visualization ~/joshua-armani-qiayra_final-project/Results_Well/denoising-stats-2.qzv

qiime feature-table tabulate-seqs \
        --i-data ~/joshua-armani-qiayra_final-project/Results_Well/rep-seqs-2.qza \
        --o-visualization ~/joshua-armani-qiayra_final-project/Results_Well/rep-seqs-2.qzv




### 5. Taxonomy assignment ################################# FOR BOTH GREATBAY & WELLS

##### For FMT, merge rep-seqs
mkdir Taxonomy 

qiime feature-table merge-seqs \
    --i-data ~/joshua-armani-qiayra_final-project/Results_GB/rep-seqs-1.qza \
   --i-data ~/joshua-armani-qiayra_final-project/Results_Well/rep-seqs-2.qza \
   --o-merged-data ~/joshua-armani-qiayra_final-project/Taxonomy/rep-seqs.qza

###### For FMT, merge feature tables
mkdir result

qiime feature-table merge \
  --i-tables ~/joshua-armani-qiayra_final-project/Results_GB/feature_table-1.qza \
  --i-tables ~/joshua-armani-qiayra_final-project/Results_Well/feature_table-2.qza \
  --o-merged-table ~/joshua-armani-qiayra_final-project/result/feature_table.qza

qiime feature-table summarize \
    --i-table ~/joshua-armani-qiayra_final-project/Results_Well/feature_table-2.qza \
    --o-visualization feature_table-2.qza


### 6. FMT taxononmy classification 

qiime feature-classifier classify-sklearn \
  --i-classifier  /tmp/gen711_project_data/eDNA-fqs/mifish/ref-database/mitofish-classifier.qza \
  --i-reads ~/joshua-armani-qiayra_final-project/Taxonomy/rep-seqs.qza \
  --o-classification ~/joshua-armani-qiayra_final-project/Taxonomy/taxonomy.qza
qiime taxa barplot \
     --i-table ~/joshua-armani-qiayra_final-project/result/feature_table.qza \
     --i-taxonomy ~/joshua-armani-qiayra_final-project/Taxonomy/taxonomy.qza \
     --o-visualization ~/joshua-armani-qiayra_final-project/result/graphs/my-barplot.qzv

qiime metadata tabulate \
  --m-input-file taxonomy.qza \
  --o-visualization taxonomy.qzv


### 7. Filtering########
mkdir filtered

qiime feature-table filter-samples \
  --i-table ~/joshua-armani-qiayra_final-project/result/feature_table.qza \
  --m-metadata-file ~/new_meta.tsv \
  --o-filtered-table ~/joshua-armani-qiayra_final-project/result/filtered/feature_table_filtered.qza

qiime taxa barplot \
     --i-table ~/joshua-armani-qiayra_final-project/result/filtered/feature_table_filtered.qza \
     --m-metadata-file ~/new_meta.tsv \
     --i-taxonomy ~/joshua-armani-qiayra_final-project/Taxonomy/taxonomy.qza \
     --o-visualization ~/joshua-armani-qiayra_final-project/result/filtered/filtered-barplot.qzv




### 8. Diversity analysis and phylogenetic placement of ASVs
mkdir Tree

qiime phylogeny align-to-tree-mafft-fasttree \
  --i-sequences ~/joshua-armani-qiayra_final-project/Taxonomy/rep-seqs.qza \
  --o-alignment ~/joshua-armani-qiayra_final-project/Tree/alignments \
  --o-masked-alignment ~/joshua-armani-qiayra_final-project/Tree/masked-alignment \
  --o-tree ~/joshua-armani-qiayra_final-project/Tree/unrooted-tree \
  --o-rooted-tree ~/joshua-armani-qiayra_final-project/Tree/rooted-tree \
  --p-n-threads 4

mkdir phylogenetic

qiime diversity core-metrics-phylogenetic \
  --i-phylogeny ~/joshua-armani-qiayra_final-project/Tree/rooted-tree.qza \
  --i-table ~/joshua-armani-qiayra_final-project/result/feature_table.qza \
  --p-sampling-depth 500 \
  --m-metadata-file ~/new_meta.tsv  \
  --p-n-jobs-or-threads 4 \
  --output-dir ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics



### 9. MANY PLOTS

qiime feature-table relative-frequency \
  --i-table ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/rarefied_table.qza \
  --o-relative-frequency-table ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/relative_rarefied_table

qiime diversity pcoa-biplot \
  --i-features ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/relative_rarefied_table.qza \
  --i-pcoa ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/unweighted_unifrac_pcoa_results.qza \
  --o-biplot ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/unweighted_unifrac_pcoa_biplot

qiime emperor biplot \
  --i-biplot ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/unweighted_unifrac_pcoa_biplot.qza \
  --m-sample-metadata-file ~/new_meta.tsv \
  --o-visualization ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/unweighted_unifrac_pcoa_biplot




### 10. Very helpful interactive diversity comparison plots

qiime diversity alpha-group-significance \
  --i-alpha-diversity ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/shannon_vector.qza \
  --m-metadata-file ~/new_meta.tsv \
  --o-visualization ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/alpha-group-significance

qiime diversity beta-group-significance \
  --i-distance-matrix ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/unweighted_unifrac_distance_matrix.qza \
  --m-metadata-file ~/new_meta.tsv \
  --m-metadata-column 'a-c_concat'  \ 
  --p-pairwise \
--o-visualization ~/joshua-armani-qiayra_final-project/phylogenetic/core-metrics/unweighted_unifrac-beta-group-significance


### 11. Export Tree
qiime tools export \
--input-path ~/joshua-armani-qiayra_final-project/Tree rooted-tree.gza \
--output-path ~/joshua-armani-qiayra_final-project/Tree/exported-tree



## RESULTS 
###### Data Preprocessing: quality control and trimming reads

![](https://github.com/KwadwoLarbi/joshua-armani-qiayra_final-project/blob/main/used%20plots/1.png)

## CONCLUSION 

## BIBLIOGRAPHY
