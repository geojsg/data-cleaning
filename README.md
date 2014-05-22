READ ME
=============

# Context

Exercise in the frame of the course "Getting and Cleaning Data"
https://class.coursera.org/getdata-003/

# Objectives

From a raw public datasets, build tidy datasets ready for later analysis
Tool used for that is R.

# Content of repository

The repository contains:
- raw data compressed
- tidy data sets
- script transform the raw datasets into tidy ones
- codebook.md : description of data

# Instructions

### Pre-requisites :
- to have R already installed

### Steps:
1. Unzip the raw data in folder
2. Download and put the script "run_analysis.R" in same folder
2. Launch R
3. Set working director as folder in which raw data are unzipped
4. write following command:
```
source("run_analysis.R")

```

### Results 
Two tidy datasets created in the working director
- A tidy and merged train and test dataset:  "dataset.csv"
- A tidy dataset summarizing the variablesfrom train and test datasets: "dataset-summary.csv"

====

Author: Jean-Sebastien Gourdet	
