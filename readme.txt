

This is a derivative work from the dataset "Human Activity Recognition Using Smartphones Dataset Version 1.0" by Ortiz et. al. Links to the full description and data are below. 
Full Description  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I felt strangely compelled take the author's original data and "Extract only the measurements on the mean and standard deviation" of their smartphone data. This includes variables that have the words "mean" or "std" (case independent) for each combination of activity and subject. There are 6 activities and 30 subjects which resulted in a dataset with 180 rows. There are 86 metrics that met my strange compulsion (mean and std) along with one column for activity and another for subject resulting in 88 columns. 

Files in this analysis

'readme.txt' - this document

'run_analysis.R' - code used to prepare the data table in smartphone_data.txt

'smartphone_data.txt' - the data table in tidy format.

'CodeBook.md' - the code book for smartphone_data.txt

To read the file 'smartphone_data.txt' into R use the command "data <- read.table(file_path, header = TRUE)". To view the table use the command "View(data)". Code is from "https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/". 


The table includes the average of all variables that include the words "mean" and "std" in any combination of case grouped by activity and subject. Of the original 561 quantitative variables, only 86 met the screening requirements.  

The data complies with the tidy data format consisting of 180 observations of 88 variables. The data is tidy in that it conforms with the three requirements for Tidy data. 
1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

One might argue that the data should be melted into four columns instead of the 88 used in this table (i.e. converted from wide to tall). However, molten data by itself wouldn't be tidy. It would be analagous to table 10a in the article "Tidy Data" by Hadley Wickham. To make the resulting molten data tidy, would require decomposing each a variable like "tBodyAccJerk-mean()-X" into it's consituent variables. This presents challenges in portions such as "Jerk". Some variables include "Jerk" while others do not. Domain knowledge is required to determine if it would be appropriate to classify a measurmeent as "Jerk" and "Not Jerk". Additionally variables such as "angle(tBodyAccMean,gravity)" are transformed combinations that the experimenter found interesting and so not appear to combine well with the rest of the dataset. "Gyro" measurements do not have x,y, and z orthogonal decompositions while "Acc" do. Thus, 86 variables were left in their uniuqe columns. With more domain knowledge, it may be possible to melt and make tidy. 

Note: the dataset was left with capitalization in the titles of the quantitative variables. This was done intentionally for several reasons. 
1. It makes it easier to read the variable names. "tBodyAccJerk-mean()-X" is easier to read than "tbodyaccjerk-mean()-x".
2. It makes using regular expressions to group the future analysis less prone to error as the capitalization clearly denotes attributes of the data (e.g. "Body", "Acc", "Jerk"). 
3. The capitalization is consistent for all of the variables (thus enabling point 2). 

Final note: The word "data" in Latin is the nominative plural of the word "datum". However, language changes with the times and as such the word "data" has become a mass noun. We no longer refer to "Agenda" and "Agendum" yet they come from the same Latin root as "Data/Datum". Other mass nouns include deer, corn, and sand. In this readme, the author used data as a singular mass noun. 