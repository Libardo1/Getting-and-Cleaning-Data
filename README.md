Getting-and-Cleaning-Data
=========================
Getting and Cleaning Data 
Course Project

This file describes how run_analysis.R script works.

First, unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip .
Make sure the data and the run_analysis.R script are both in the current working directory.
Second, use source("run_analysis.R") command in RStudio.
Third, you will find two output files are generated in the current working directory:
alldata.csv: it contains a clean data frame with 10299*81 dimension.
tidy_data.csv: it contains a data frame with the means by ID and activity with 180*81 dimension.
