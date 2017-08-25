#
# Vitor Zamprogno amancio Pereira
#
# - Getting and Cleaning Data Coursera course final project  
# 
#

# Removing all objects from the environment before starting
rm(list = ls())

#
# Download the data source to working directory 
# (se este j? existir pergunta ao usu?riose deseja sobreescrever)
datasource="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destFile=paste(getwd(),"dataset.zip",sep="/")
download.file(datasource,destFile,method="curl")
 

#
# Unzip the  downloaded file
unzip(destFile)


#
# The unziped file creates the directory "UCI HAR Dataset"
# With the following structure
# UCI HAR Dataset
#    +--- test 
#           +--- Inertial Signals
#    +--- train
#           +--- Inertial Signals
#
# Then putting the path to the "UCI HAR Dataset" directory in a variable 
dataDir <- "./UCI HAR Dataset"
#
#Doing the same for the train and test subdirectories
testDir <- "./UCI HAR Dataset/test"
trainDir <- "./UCI HAR Dataset/train"

#
# Reading the data files on train and test
trainSubject <- read.table(paste(trainDir,"subject_train.txt",sep="/"))
trainX <- read.table(paste(trainDir,"x_train.txt",sep="/"))
trainY <- read.table(paste(trainDir,"y_train.txt",sep="/"))
testSubject <- read.table(paste(testDir,"subject_test.txt",sep="/"))
testX <- read.table(paste(testDir,"x_test.txt",sep="/"))
testY <- read.table(paste(testDir,"y_test.txt",sep="/"))
#
# Inspecting the contents of these data sets
dim(trainSubject)
head(trainSubject,n=2)
dim(trainX)
head(trainX,n=2)
dim(trainY)
head(trainY,n=2)
dim(testSubject)
head(testSubject,n=2)
dim(testX)
head(testX,n=2)
dim(testY)
head(testY,n=2)

# 
# Reading "features.txt to use as column labels for trainX and testX
features=read.table(paste(dataDir,"features.txt",sep="/"))

# --------------------------------------------------------------------------
# 1 MERGES THE TRAINNING AND THE TEST SETS TO CREATE ONE DATA SET.
# --------------------------------------------------------------------------
# Merging the train files
train <- cbind(trainY,trainSubject,trainX)
#
# Merging the test files
test <- cbind(testY,testSubject,testX)
#
# Putting all together in one file
allData <- rbind(train,test)
#
# Placing names in the columns of the new file
ColumnNames <- c("Activity","SubjectId",as.character(features$V2))
names(allData) <- ColumnNames 

#
# ------------------------------------------------------------------------------------------
# 2 EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT.
# ------------------------------------------------------------------------------------------
ColumnsToExtract <- c(1:2,grep("mean\\(\\)|std\\(\\)",ColumnNames))
allData <- allData[ColumnsToExtract]
dim(allData)
#
# ------------------------------------------------------------------------------------------
# 3 USE DESCRIPTIVE NAMES TO NAME THE ACTIVITIES IN THE DATA SET
# ------------------------------------------------------------------------------------------
activityLabels <- read.table(paste(dataDir,"activity_labels.txt",sep="/"))
Activity <- factor(allData$Activity,activityLabels$V1,as.character(activityLabels$V2))
allData <- cbind(Activity,allData[2:ncol(allData)])
#
# ------------------------------------------------------------------------------------------
# 4 APPROPRIETELY LABELS THE DATA SET WITH DESCRIPTIVE VARAIBLE NAMES
# ------------------------------------------------------------------------------------------
columnNames <- names(allData)
columnNames <- gsub("\\(", "",columnNames)
columnNames <- gsub("\\)", "",columnNames)
columnNames <- gsub("BodyAcc", "BodyAcceleration",columnNames)
columnNames <- gsub("GravityAcc", "GravityAcceleration",columnNames)
columnNames <- gsub("Mag", "Magnitude",columnNames)
columnNames <- gsub("-mean", "Mean",columnNames)
columnNames <- gsub("-std", "StandardDeviation",columnNames)
columnNames <- gsub("-X", "AxisX",columnNames)
columnNames <- gsub("-Y", "AxisY",columnNames)
columnNames <- gsub("-Z", "AxisZ",columnNames)
columnNames <- tolower(columnNames)
names(allData) <- columnNames

#
# ------------------------------------------------------------------------------------------
# 5 FROM THE DATA SET IN STEP 4, CREATES A SECOND, INDEPENDENT TIDY DATA SET WITH
#   THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT
# ------------------------------------------------------------------------------------------
# Loading required libraries
require("reshape2")
require("plyr")
# Using melt to put the dataset in an easier way for the calculation of averages. 
allDataLong <- melt(allData,id.vars=columnNames[1:2],measure.vars=columnNames[3:68],value.name = "value")
# Calculating the average of each variable for each activity and each subject
allDataSum <- ddply(allDataLong,c("activity","subjectid","variable"),summarise,value=mean(value))
# Returning to a format with multiple measurement columns
allDataFinal <- dcast(allDataSum, activity + subjectid ~ variable)
# Saving the final data set
tidyDatasetName=paste(getwd(),"tidydataset.txt",sep="/")
write.table(allDataFinal,tidyDatasetName,row.names = FALSE)
#
# END
#

