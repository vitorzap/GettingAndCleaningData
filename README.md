# **Introduction**

#

Most of part of data analyst work time is spent on preparing the data before doing any statistical operation (Tidying the data) and that&#39;s the focus of this final project for the Getting and Cleaning Data course on Cousera. In this project we have to get a group of files that compound an &quot;untidy&quot; dataset from an experiment about human movements while doing some activities.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years, and the data is acquired by the accelerometer and gyroscope from the smartphones used for these persons (all used the same Samsung Galaxy S II)

Each participant in the experiment performed six common daily activities  (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITUATION, POSITION, POSITION).

The data from this experiment can be obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

I used the command &quot;download.file&quot; to get this file and as it is a zip file after unzipped we have the following directory structure:

### UCI HAR Dataset

   * #### test

        - Inertial Signals**

    * #### train

        - Inertial Signals**

and following files

#### UCI HAR Dataset directory

- _README.txt_

- _features\_info.txt:_  information about the variables used on the feature vector.

- _features.txt:_ List of all features.

- _activity\_labels.txt:_  Links the class labels with their activity name.

#### train subdirectory

- _subject\_train.txt:_ Each row identifies the subject who performed the activity

 - _X\_train.txt:_ Training set.

 - _y\_train.txt:_ Training labels.

#### test subdirectory

- _subject\_train.txt_: Each row identifies the subject who performed the activity

- _X\_test.txt_: Test set.

- _y\_test.txt_: Test labels.


__Inertial Signals:__  both from train and test contains some files but after inspecting its content I see they won&#39;t be useful for the project.

# **Methods**


#

#### The instructions for the project were:

1. Merges the training and the test set to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

I started reading the files into variables, and inspecting then using &quot;dim&quot; and &quot;head&quot; commands, as result a see that the files &quot;subject\_\*.txt,  X\_\*.txt and Y\_\*.txt&quot; have the same number of rows en each subdirectory (train and test),

7352 rows for the files in train and 2947 rows for the files in test.

Then I started to work to accomplish each instruction stated above:

### *1. Merges the training and the test set to create one data set.*

Since the datasets in each directory (train and test) have the same number of rows, I put the variables side by side by joining them into a dataset using &quot;cbind&quot;. I got then 2 datasets one from train subdirectory and other from test subdirectory. These datasets have the same number of columns and were concatenated using &quot;rbind&quot;, generating a dataset that I called  &quot;allData&quot;, then create a character vector by combining the strings &quot;SubjectId&quot; and &quot;Activity&quot; and the content of &quot;features.txt&quot; (&quot;SubjectId&quot; and &quot;Activity&quot; for the columns from  &quot;subject\_\*.txt&quot; and &quot;Y\_\*.txt and &quot;features.txt&quot; for columns from &quot;X\_\*.txt&quot;). I named this character vector as &quot;ColumnNames&quot; and used it to put the names on the dataset  (names(allData) &lt;- ColumnNames).

### *2. Extracts only the measurements on the mean and standard deviation for each measurement.*

After inspect the content of features.txt, I think that the &quot;measurements on the mean and standard deviation&quot; are the variables witch have the string &quot;mean()&quot;and &quot;std()&quot; in their names. So the variables that should be used are &quot;SubjectId&quot;, &quot;Activity&quot; and all others that contain strings &quot;mean ()&quot; or &quot;std ()&quot; in their name. Using the vector with the names of the variables created in step 1 (ColumnNames) I created a vector of integers containing the indices of the columns to be kept in the dataset (ColumnsToExtract &lt;- c (1: 2, grep (&quot;mean\\(\\)|Std\\(\\)&quot;, ColumnNames)) and I used this vector to remove the useless columns, thus attending step 2 (allData &lt;- allData [ColumnsToExtract])

### *3. Uses descriptive activity names to name the activities in the data set.*

To accomplish this step I decided to replace the &quot;Activity&quot; column, where the activities are coded as integers numbers, by a factor column of containing basically the same information but using the activity descriptions as levels. For this I followed the following steps:

-  Read the file activity names for the &quot;activityLabels&quot; dataframe.

-  Create the factor using the &quot;factor&quot; command having as parameters the &quot;Activity&quot; column of the dataframe generated in step 2 and the description column of the activities of the dataframe &quot;activityLabels&quot;

- Recreate the dataframe received from step 2, including the Activity column that contained the activities encoded in integers and replacing it with the new factor column created. Do by using &quot;cbind&quot;

### *4. Appropriately labels the data set with descriptive variable names*

I retrieved the names of the columns using &quot;names&quot; in the variable &quot;columnNames&quot; and I used a series of &quot;gsubs&quot; turn them more meaningful in the way I think and reapplied to dataset allData also using &quot;names&quot;, thus fulfilling step 3

### *5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.*

In order to facilitate the calculus of the average of each measurement variable I melted the dataset by getting one value per line, then I used &quot;ddply&quot; to obtain the averages of these values grouped by &quot;SubjectId&quot;, &quot;Activity&quot; and &quot;variable&quot; and after that returned to a &quot;wide&quot; format with &quot;dcast&quot;, giving the dataset required by this step.