READ ME
=============

## Context

Exercise in the frame of the course "Getting and Cleaning Data"

https://class.coursera.org/getdata-003/


## Objectives

From a raw public datasets, build tidy dataset ready for later analysis

Tool used for that is R.


## Content of repository

The repository contains:
* README.md
* UCI HAR Dataset.zip : raw data compressed (inputs)
* summarized-data.txt : tidy summarized data (output)
* run_analysis.R : script transform the raw datasets into tidy ones
* codebook.md : description of data


## Instructions

### Pre-requisites :
- R already installed
- R package "reshape2" installed, otherwise run in R:
```
install.packages("reshape2")
```


### Steps:
1. Unzip the raw data in a folder
2. Download and put the script "run_analysis.R" in same folder
2. Launch R
3. Set working directory as the folder in which raw data are unzipped
4. write following command:
```
source("run_analysis.R")
```

### Output

When "COMPLETED" :

* A tidy dataset summarizing the variables from train and test datasets for each pair activity / subject : "summarized-data.txt"

====

Author: Jean-Sebastien Gourdet	
