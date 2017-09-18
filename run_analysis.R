ReadData <- function()
{
        ######################################################################
        ##1. Merges the training and the test sets to create one data set.
        ######################################################################
        
        ##use sep="" to indicate any number of white spaces if you use " " it doesn't load properly
        TestData<-read.table (".\\UCI HAR Dataset\\test\\X_test.txt",sep="")  ##argggg, why \\?
        TestActivities<-read.table (".\\UCI HAR Dataset\\test\\y_test.txt",sep="") 
        TestSubjects<- read.table (".\\UCI HAR Dataset\\test\\subject_test.txt",sep="") 
        
        TrainData<-read.table (".\\UCI HAR Dataset\\train\\X_train.txt",sep="") 
        TrainActivities<-read.table (".\\UCI HAR Dataset\\train\\y_train.txt",sep="") 
        TrainSubjects<- read.table (".\\UCI HAR Dataset\\train\\subject_train.txt",sep="")  
        
        ##bind the respective tables into columns
        TestBind <- cbind(TestActivities,TestSubjects, TestData)
        TrainBind <- cbind(TrainActivities,TrainSubjects, TrainData)
        
        ##read the features and add two lables for Activities and Subjects
        features <- read.table(".\\UCI HAR Dataset\\features.txt",sep="")
        features <- c("activities","subjects",as.vector(features$V2))

        ##bind train and test and give them labels
        Full <- rbind(TestBind,TrainBind)
        colnames(Full) <- features
        
        ##free up some memory (I found this here https://stackoverflow.com/questions/11761992/remove-objects-data-from-workspace)
        rm(list=ls()[grep("^Train|^Test", ls())])
        
        ##we now have one mongo table with nice titles
        
        ######################################################################
        ## 2. Extracts only the measuremen1nts on the mean and standard deviation for each measurement.
        ######################################################################
        
        ##Note: the instructions say "for each measurement" there are five additional metrics
        ##in "features_info.txt" which have the mean (gravityMean to tBodyGryroJerkMean)
        ##they are already means of means, but I will include them for completeness.  
        ##key literals are mean and std
        
        ##use regular expression to get the columns that have mean and sigma
        szRegExp <- "[Mm]ean|[Ss]td|activities|subjects"  ##get first two cols also 
        musigma <- grep(szRegExp,features) ##shouldn't be greek letters since this is a sample, but this isn't a stats class

        ##extract only the desired columns
        Full <- Full[,musigma]   
        
        ######################################################################
        ## 3. Uses descriptive activity names to name the activities in the data set
        ######################################################################
        
        ##read the activity labels file
        Acts<- read.table (".\\UCI HAR Dataset\\activity_labels.txt",sep="")  
  
        ##factorize activities and apply labels
        Full$activities <- factor(Full$activities, labels=unlist(Acts$V2))
        
        ##might as well factorize Subject for step 5 (if we knew their names we could use them as labels)
        Full$subjects <- factor(Full$subjects)
       
        ######################################################################
        ## 4. Appropriately labels the data set with descriptive variable names.
        ######################################################################
        
        ##Short version - done with step 4. Full contains a Tidy Dataset
        ##Long version...
        ##Activities is a factor with appropriate labels
        ##Subjects is a factor (no labels are available)
        ##Per https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
        ##don't decompose the variable names. 
        
        
        
        ######################################################################
        ## 5. From the data set in step 4, creates a second, independent tidy data set 
        ##    with the average of each variable for each activity and each subject.
        ######################################################################
        
        ##I'm assuming the question wants a GroupBy both Activity and Subject as that is more
        ##difficult as two data frames, one for Activity and the other for Subject
        ##Use aggregate for what it's good for
        ##Answer 5 in short long
        WideTidy <- aggregate(Full[,3:ncol(Full)], list(Full$activities,Full$subjects),mean)
        
        ##rename the first two columns so they are descriptive
        colnames(WideTidy)[1:2]<-c("activities","subject")
        
        WideTidy  ##return value
        
}


