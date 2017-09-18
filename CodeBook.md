Data Dictionary for Week 4 Project - 2017

This data dictionary is for a derivate work from Human Activity Recognition Using Smartphones Data Set located at the url below. 

Full Description - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data -
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


The dataset includes 180 rows of 88 columns. For each combination of activities (6 possible) and subject (30 possible) there are averages of 86 "metrics of interest". This results in 180 rows (6*30) with 88 columns (86 metrics + activities column + subject column). 

1 activities		
Categorical variable indicating the physical activity of the subject while readings were taken. 
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING

2 subject - Categorical variable indicating which of the 30 subjects the data is for. 1-30.

The third through the 88th variables are the mean of the original variables that are means or standard deviations (kurtosis, skewness, energy, or any metric that is not a mean or standard deviation has been ommited). For a full list of variables see the link at the bottom of this document. As they are means, it is redundant but importnat to note they are quantitative.  A guide to reading the variables is below this list. The author's original notes about prior processing of the data "The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain." For more information, see the "features-info.txt" file in the original author's data. 

3 tBodyAcc-mean()-X
4 tBodyAcc-mean()-Y
5 tBodyAcc-mean()-Z
6 tBodyAcc-std()-X
7 tBodyAcc-std()-Y
8 tBodyAcc-std()-Z
9 tGravityAcc-mean()-X
10 tGravityAcc-mean()-Y
11 tGravityAcc-mean()-Z
12 tGravityAcc-std()-X
13 tGravityAcc-std()-Y
14 tGravityAcc-std()-Z
15 tBodyAccJerk-mean()-X
16 tBodyAccJerk-mean()-Y
17 tBodyAccJerk-mean()-Z
18 tBodyAccJerk-std()-X
19 tBodyAccJerk-std()-Y
20 tBodyAccJerk-std()-Z
21 tBodyGyro-mean()-X
22 tBodyGyro-mean()-Y
23 tBodyGyro-mean()-Z
24 tBodyGyro-std()-X
25 tBodyGyro-std()-Y
26 tBodyGyro-std()-Z
27 tBodyGyroJerk-mean()-X
28 tBodyGyroJerk-mean()-Y
29 tBodyGyroJerk-mean()-Z
30 tBodyGyroJerk-std()-X
31 tBodyGyroJerk-std()-Y
32 tBodyGyroJerk-std()-Z
33 tBodyAccMag-mean()
34 tBodyAccMag-std()
35 tGravityAccMag-mean()
36 tGravityAccMag-std()
37 tBodyAccJerkMag-mean()
38 tBodyAccJerkMag-std()
39 tBodyGyroMag-mean()
40 tBodyGyroMag-std()
41 tBodyGyroJerkMag-mean()
42 tBodyGyroJerkMag-std()
43 fBodyAcc-mean()-X
44 fBodyAcc-mean()-Y
45 fBodyAcc-mean()-Z
46 fBodyAcc-std()-X
47 fBodyAcc-std()-Y
48 fBodyAcc-std()-Z
49 fBodyAcc-meanFreq()-X
50 fBodyAcc-meanFreq()-Y
51 fBodyAcc-meanFreq()-Z
52 fBodyAccJerk-mean()-X
53 fBodyAccJerk-mean()-Y
54 fBodyAccJerk-mean()-Z
55 fBodyAccJerk-std()-X
56 fBodyAccJerk-std()-Y
57 fBodyAccJerk-std()-Z
58 fBodyAccJerk-meanFreq()-X
59 fBodyAccJerk-meanFreq()-Y
60 fBodyAccJerk-meanFreq()-Z
61 fBodyGyro-mean()-X
62 fBodyGyro-mean()-Y
63 fBodyGyro-mean()-Z
64 fBodyGyro-std()-X
65 fBodyGyro-std()-Y
66 fBodyGyro-std()-Z
67 fBodyGyro-meanFreq()-X
68 fBodyGyro-meanFreq()-Y
69 fBodyGyro-meanFreq()-Z
70 fBodyAccMag-mean()
71 fBodyAccMag-std()
72 fBodyAccMag-meanFreq()
73 fBodyBodyAccJerkMag-mean()
74 fBodyBodyAccJerkMag-std()
75 fBodyBodyAccJerkMag-meanFreq()
76 fBodyBodyGyroMag-mean()
77 fBodyBodyGyroMag-std()
78 fBodyBodyGyroMag-meanFreq()
79 fBodyBodyGyroJerkMag-mean()
80 fBodyBodyGyroJerkMag-std()
81 fBodyBodyGyroJerkMag-meanFreq()
82 angle(tBodyAccMean,gravity)
83 angle(tBodyAccJerkMean),gravityMean)
84 angle(tBodyGyroMean,gravityMean)
85 angle(tBodyGyroJerkMean,gravityMean)
86 angle(X,gravityMean)
87 angle(Y,gravityMean)
88 angle(Z,gravityMean)


Per the author's original notes "These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Example 1: "tBodyAcc-mean()-X" is the mean of the mean tBody measurements from the accelerometer in the X direction for the given subject and activity. 

Example 2: "tGravityAcc-std()-Z" is the mean of the standard deviation of gravity measurements of acceleration in the Z direction. 

The last six (82-88) variables were included in the dataset as they included the word "mean". If the article had explained how they were calculated then we could have ommitted them. The article only states "Additional vectors obtained by averaging the signals in a signal window sample." 

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

For more information, see the "features-info.txt" file in the original author's data. 