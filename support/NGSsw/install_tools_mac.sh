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
#        thought for MacOS users. 
#
#        For Linux users, please refer to 
#        install_tools_linux.sh.
#
#################################################################

# set home as current directory
my_home=$PWD

# install gcc-9
brew install gcc@9

# install SAMtools
brew install samtools

# install HTSlib
git clone --recursive https://github.com/samtools/htslib.git
cd htslib
autoheader
autoconf
./configure
make 
make install
cd $my_home

# install bamtools
brew install jsoncpp 
git clone git://github.com/pezmaster31/bamtools.git
cd bamtools
mkdir build 
cd build 
cmake ..
make 
make install
cd $my_home

# install trimmomatic
wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.39.zip
unzip Trimmomatic-0.39.zip

# install bowtie2
wget https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.4.2/bowtie2-2.4.2-macos-x86_64.zip
unzip bowtie2-2.4.2-macos-x86_64.zip

# install bwa
brew install bwa

# install STAR
git clone https://github.com/alexdobin/STAR.git
cd STAR/source
make STARforMacStatic CXX=/usr/local/Cellar/gcc/8.2.0/bin/g++-8
cp STAR /usr/local/bin
cd $my_home

# install HTSeq
pip3 install HTSeq

# install subread
wget https://sourceforge.net/projects/subread/files/subread-2.0.0/subread-2.0.0-source.tar.gz/download
tar xvzf subread-2.0.0-source.tar.gz
cd subread-2.0.0-source/src
make -f Makefile.MacOS
cd $my_home

