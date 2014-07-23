Readme.MD
========================================================

This repository contains the following files -

1. Readme.MD - This file.
2. getdata_projectfiles_UCI HAR Dataset.zip - The original problem set provided for the course project
3. CookBook.MD - The cookbook containing script execution, column names and variables used
4. run_analysis.R - This is the R script to execute
5. DataSet.txt - The file containing the data set after tidying it up
6. TidySet.txt - The final tidy set

**About the file:**

This R Script is very specific to the problem at hand. This script

1. Merges the training set and test set
2. Merges the subjects
3. Merges the labels
4. Replace labels with the string equivalent
5. Saves dataset in the folder
6. Tidies the data as per the requirement
7. Saves tidy data into a text file.


**How to use:**

*Prerequisite -*

1. OS - Windows 8
2. Create a folder called R in the C directory
3. Extract "getdata_projectfiles_UCI HAR Dataset.zip" into this folder. This creates a folder called "UCI HAR Dataset"

*Execution -*
Run the R script from RStudio

*Output -*

1. The DataSet that contains only Activity, Subject, mean and std values. The variable "DataSet" of the variable can be found in the RStudio environment. This is also saved at the following location - C:\R\UCI HAR Dataset\DataSet.txt

2. The TidySet that contains summarized version of the previous file by Activity / Subject and mean of all other columns. This variable is called TidySet in the RStudio environment. This is also saved as - C:\R\UCI HAR Dataset\TidySet.txt

*Note-*
Please refer to the CookBook.MD file for more details.