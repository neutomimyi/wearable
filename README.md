###Repo contents
* README.md - this file  
* run_analysis.R - R code that generates a tidy dataset described in CodeBook.md  
* CodeBook.md - code book for the tidy dataset  
* tidy_dataset.txt - tidy dataset  
  
###Code execution prerequisites
The R code uses the following libraries that must be installed prior to the code 
execution:  

* LaF  
* dplyr  

Source datasets are expected to be in ./UCI HAR Dataset directory. To get the 
source datasets use this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip it after downloading.

###Code execution
To execute the code simply source it in your R environment.

###Code explanation
The code is commented in great detail in run_analysis.R These are the steps that 
produce a file with the tidy dataset: 

1. Load the full list of features available in the raw datasets  
2. From the full list of features extract only those that will be used in the 
tidy dataset. It is a two-step process followed by sorting to make sure the 
similarly named variables are grouped together. Otherwise all mean() variables 
would be separated from all std() variables  
3. Read the training dataset  
4. Provide descriptive column names to the data frame with the training dataset  
5. Read the test dataset  
6. Provide descriptive column names to the data frame with the test dataset  
7. Read the set of activities in the train dataset and add a column with 
descriptive activities to the data frame with the train dataset  
8. Read the set of activities in the test dataset and add a column with 
descriptive activities to the data frame with the train dataset  
9. Read the set of subjects in the train dataset and add a column with subjects 
to the data frame with train dataset  
10. Read the set of subjects in the test dataset and add a column with subjects 
to the data frame with test dataset  
11. Merge train and test datasets  
12. Create the tidy dataset by grouping on activities and subjects and 
calculating mean for each of the measurements for each of the groups  
13. Write the tidy dataset to disk  


