#!/bin/bash

#################################################################
#
# author: Manuel Tognon
# 
# brief: Running this script will be installed 
#        all the tools required during NGS
#        classes of the course Programming
#        laboratory for bioinformatics 
#        aa. 2020-21
#
#        Note that this shell script has been 
#        thought for Linux users. 
#
#        For MacOS  users, please refer to 
#        install_tools_mac.sh.
#        
#        For windows users, please create an Ubuntu bash
#        on Windows before or at least use a virtual
#        machine. !!! Disclaimer !!! if you choose the 
#        latter option consider that many tools could be
#        not so trivial to install and many of them will not
#        run at all (possible reasons: shortage of memory, 
#        shortage of available CPU, overhead introduced by
#        the virtualization, etc.)
#
#################################################################

# set home as current directory
my_home=$PWD

# check for updates 
sudo apt-get update

# install gcc, make, llvm, etc.
sudo apt-get install -y build-essential

# install git
sudo apt-get install -y  git

# install SAMtools
sudo apt-get install -y libbz2-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libncurses5-dev 
sudo apt-get install -y libncursesw5-dev
sudo apt-get install -y liblzma-dev
sudo apt-get install -y libcurl4-openssl-dev
git clone --recursive https://github.com/samtools/samtools.git
cd samtools 
make 
cd $my_home

# install HTSlib
git clone --recursive https://github.com/samtools/htslib.git
cd htslib
./configure
make 
make install
cd $my_home

# install bamtools
sudo apt-get install -y libjsoncpp-dev
git clone git://github.com/pezmaster31/bamtools.git
cd bamtools
mkdir build 
cd build 
cmake ..
make 
make install
cd $my_home

# install FastQC
wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip
unzip fastqc_v0.11.9.zip
sudo mv FastQC/ /opt/FasqtQC
sudo chmod +x /opt/FasqtQC/fastqc
sudo ln -s /opt/FasqtQC/fastqc /usr/bin/fastqc

# install trimmomatic
sudo apt-get install trimmomatic

# install bowtie2
sudo apt-get install bowtie2

# install bwa
sudo apt-get install bwa

# install STAR
git clone https://github.com/alexdobin/STAR.git
cd STAR/source
make STAR
cd $my_home

# install HTSeq
pip3 install HTSeq

# install subread
sudo apt-get install subread

