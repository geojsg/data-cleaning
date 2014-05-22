Code Book
=============

## Raw Data

### Overview

Human Activity Recognition Using Smartphones Data Set

Data collected from the accelerometers embedded in the Samsung Galaxy S smartphone

### Source

Public dataset available on:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Datasets

#### Data

Two types of data
* train
* test

For each, there are:
* measurements: quantitatives variables : X_[train|test].txt
* activity : nominal variable represented by integers: y_[train|test].txt
* subjects : nominal variable represented by integers: subject_[train|test].txt

#### Descriptives data

Besides, there are  descriptive datasets:
* description of activities. Mappign table: the Activity code (see above the Activity variable) and associated name.
* variables names of measurements. Mapping table: Column number and associated variable name of concerned measurements

Further documentations about variables are included in zipped folder


#### Out of scope
Data train or test of Inertial Signals are excluded from scope of exercice


## Transformation

### Assembling data

A dataset is created by assembling:
* horizontally: measurements variables with actity and subject variable
* vertically: train and test variable

### Assigning labels to features
* features are names properly
* parenthesis symbols are removed for a better readability
* symbols "-" are replaced by "." for a better readability

### Measurement Variables selection

For the purpose of the exercice, the dataset focuses only of measurements related to any kind of mean or standard deviation.
All others measurements variables are excluded from the tidy dataset.

### Description of activities

Replace activity code by activity names from the activity labels dataset
 
### Summarizing measurements data

Measurements variable are summarized by their mean for each pair activity / subject.

## Tidy dataset

From these raw datasets, only one tidy datasets is generated with following structure:
* Activity: nominal variable with descriptive categorical value
* Subject : nominal variable represented by integers
* Measurements variables : only the ones related to mean or standard deviation
* better readable names of all these features

This data set is created in format TXT with Tab-separated value method










