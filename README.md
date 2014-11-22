# Read Me

This repository contains files to pre process action data from UCI repository.

Here are [descritpion](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ) of the data, you can download data [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ).

## Files

There are two files: run_analysis.R and CokdeBook.md in the repository.

### CodeBook.md

This file contains descriptions of the variables in the processed data.

### run_analysis.R

This is a R script file to process data.

Here are the explanation of the file:

Please put the unzipped data (a folder named as "UCI HAR Dataset") in the working directory.

The script does the follwing:

1. Load the data from the corresponding folders. 
2. Merge the training and testing data into one data frame.
3. Use grep() function selects the variables which contain key word "mean" and "std". 
4. Load the descriptive names of the variables and name them in the data frame.
5. Transform the numeric label (1, 2...) to descirptive names (Walking, Standing...).
6. Melt and cast data with respect to variable "subject" and "label" and compute the mean value.
7. Save the tidy data in the current working directory with name "data.txt".