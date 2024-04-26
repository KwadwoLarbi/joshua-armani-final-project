

/bin/bash

mkdir -p final_dir
cd final_dir
mkdir -p raw_reads
cd raw_reads
cp /tmp/gen_project/mifish/*.fq .

conda activate qiime2-2022.8

qqime tools import \
--type "sampleData[PairedEndSequencesWithQuality]' \
--input-format CasavaOneEightSingleLanPerSampleDirFmt
--input-path /tmp/gen_projects/mifish
--output-path ./raw_reads.qza

