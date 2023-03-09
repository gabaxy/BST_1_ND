#!/bin/sh
#wget the references and put them in refs directory
wget https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M10/gencode.vM10.pc_transcripts.fa.gz -o ~/HW1/refs #transcriptome
wget https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M10/gencode.vM10.annotation.gtf.gz -o ~/HW1/refs  #gff file
wget https://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M10/GRCm38.primary_assembly.genome.fa.gz ~/HW1/refs  #genome

#then we get raw files 
for i in 1 2
do 
    wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR898/007/SRR8985047/SRR8985047_$i.fastq.gz -o ~/HW1/inputs 
    wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR898/008/SRR8985048/SRR8985048_$i.fastq.gz -o ~/HW1/inputs 
    wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR898/001/SRR8985051/SRR8985051_$i.fastq.gz -o ~/HW1/inputs 
    wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR898/002/SRR8985052/SRR8985052_$i.fastq.gz -o ~/HW1/inputs 
done
