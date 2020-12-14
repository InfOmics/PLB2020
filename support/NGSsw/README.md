# How to install tools for NGS class PLB 2020-21

## Before you start

With the following files will be installed all the bioinformatics tools required to proficiently
follow the NGS classes of the course Programming Laboratory for Bioinformatics aa.2020-21.

The tools you will install are:
- [SAMtools](https://github.com/samtools/samtools)
- [HTSlib](https://github.com/samtools/htslib)
- [BAMtools](https://github.com/pezmaster31/bamtools)
- [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic)
- [Bowtie2](http://bowtie-bio.sourceforge.net/bowtie2/index.shtml)
- [BWA](http://bio-bwa.sourceforge.net/)
- [STAR](https://github.com/alexdobin/STAR)
- [HTSeq](https://htseq.readthedocs.io/en/master/)
- [Subread](http://subread.sourceforge.net/)
- [IGV](http://software.broadinstitute.org/software/igv/)

We prepared two shell scripts to install all these tools apart of IGV, which requires a simple download of the 
Desktop app at [http://software.broadinstitute.org/software/igv/download](http://software.broadinstitute.org/software/igv/download).

Linux users should run the script `install_tools_linux.sh`, while MacOS users should run `install_tools_mac.sh`.

**!!! IMPORTANT !!!**

Since very few of the tools you are going to install can be built on Windows, if you work with Windows,
you should set an Ubuntu bash on Windows enviroment before to start, and then run `install_tools_linux.sh`, 
or at least set a virtual machine with Ubuntu. Note that the latter option is not the best one, since many 
tools could run incorrectly or not run at all, because of memory shortage, CPU shortage, overhead introduced 
by the VM, etc.

## Prerequisites

Make sure you have a C/C++ compiler (`gcc` is the best choice, not `clang`), `make` and `git` installed and 
available in your Unix `PATH`. 

Linux users can solve it by running
```
sudo apt-get update
sudo apt-get install -y build-essential 
sudo apt-get install -y git
``` 

`CMake` is required to build some tools from source. CMake can be easily downloaded from [https://cmake.org/download/](https://cmake.org/download/). Choose 
the CMake you like (better if >= 3.12) and that match your OS.

MacOS users have first to install XCode from the App Store. Installing XCode you will install a bundle of 
developing tools, including `clang`, `git` and `make`. You will have a `gcc`, but it is link to `clang`. It 
is recommended to use GNU `gcc`, which can be installed via Homebrew or MacPort (see [https://discussions.apple.com/thread/8336714](https://discussions.apple.com/thread/8336714)).

To download some tools and dependencies needed on **MacOS** we will use Homebrew. Make sure Homebrew is installed and
available in your `PATH`. If not, please refer to [https://docs.brew.sh/Installation](https://docs.brew.sh/Installation).

## During installation

**SUGGESTION**

Before running the scripts create a directory called `tools` in your Desktop and enter it, then run your script.

**MacOS users**

FastQC cannot be built from source, instead a DMG image available for the download is available at [https://www.bioinformatics.babraham.ac.uk/projects/download.html#fastqc](https://www.bioinformatics.babraham.ac.uk/projects/download.html#fastqc). 
Download and install it using following the GUI instructions.

## After installation

Once all tools have been installed it is suggested to add to your `PATH` all of them. To do this, open your `.bash_profile` or `.bashrc` and add something like
```
export PATH=/path/to/bowtie2:$PATH
```
To make the changes take effect
```
source ~/.bashrc  # or source ~/.bash_profile
```

### !!! IMPORTANT !!!
**Be very very very very very very very very careful when you modify your `PATH`. Check 1000 times that the path to the tool you want to add is correct and that your are appending it to the `$PATH`.** 

The risk is that you will overwrite the PATH and you will not be able even to call a simple `mkdir` from command-line.

