Getting and Cleaning Data Course Project CodeBook
This file describes the data, the variables, and the procedure, transformations or work associated with to clean up and use the data.

The source for the data:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The run_analysis.R script performs the following actions:
Preprocessing.
First al all, for our project we must involve just mean or std variables. We reduce our original data set from 561 to 79 varaiables.
*In the middle of the process, I check the partial results to confirm it and i comment them.
Read X_train.txt, y_train.txt and subject_train.txt from the "./data/train" folder and store them in X_train_wk, trainLabel and trainSubject variables respectively.
Read X_test.txt, y_test.txt and subject_test.txt from the "./data/test" folder and store them in X_test_wk, testLabel and testsubject variables respectively.
Column names: I conserve the original names.
Activity names:I conserve the original names.
Merge X_train_wk to X_test_wk into alldata with 10299 * 81 (includes ID and activity_label).
Write my alldata file in current working directory.
Finally, i figure the average of each measurement by ID and activity and each subject using ddply() and generate my tidy_data file (180 * 81). 
Write my tidy_data file in current working directory.

Variables Names colnames(tidy_data)

The prefix t denotes time
The prefix f denotes Fast Fourier Transform (FFT) was applied to these signals 

column	columnname
1	ID                             42	tBodyGyroJerkMag-std()       
2	activity_label                 43	fBodyAcc-mean()-X              
3	tBodyAcc-mean()-X              44	fBodyAcc-mean()-Y            
4	tBodyAcc-mean()-Y              45	fBodyAcc-mean()-Z              
5	tBodyAcc-mean()-Z              46	fBodyAcc-std()-X             
6	tBodyAcc-std()-X               47	fBodyAcc-std()-Y               
7	tBodyAcc-std()-Y               48	fBodyAcc-std()-Z             
8	tBodyAcc-std()-Z               49	fBodyAcc-meanFreq()-X          
9	tGravityAcc-mean()-X           50	fBodyAcc-meanFreq()-Y        
10	tGravityAcc-mean()-Y           51	fBodyAcc-meanFreq()-Z          
11	tGravityAcc-mean()-Z           52	fBodyAccJerk-mean()-X        
12	tGravityAcc-std()-X            53	fBodyAccJerk-mean()-Y          
13	tGravityAcc-std()-Y            54	fBodyAccJerk-mean()-Z        
14	tGravityAcc-std()-Z            55	fBodyAccJerk-std()-X           
15	tBodyAccJerk-mean()-X          56	fBodyAccJerk-std()-Y         
16	tBodyAccJerk-mean()-Y          57	fBodyAccJerk-std()-Z           
17	tBodyAccJerk-mean()-Z          58	fBodyAccJerk-meanFreq()-X    
18	tBodyAccJerk-std()-X           59	fBodyAccJerk-meanFreq()-Y      
19	tBodyAccJerk-std()-Y           60	fBodyAccJerk-meanFreq()-Z    
20	tBodyAccJerk-std()-Z           61	fBodyGyro-mean()-X             
21	tBodyGyro-mean()-X             62	fBodyGyro-mean()-Y           
22	tBodyGyro-mean()-Y             63	fBodyGyro-mean()-Z             
23	tBodyGyro-mean()-Z             64	fBodyGyro-std()-X            
24	tBodyGyro-std()-X              65	fBodyGyro-std()-Y              
25	tBodyGyro-std()-Y              66	fBodyGyro-std()-Z            
26	tBodyGyro-std()-Z              67	fBodyGyro-meanFreq()-X         
27	tBodyGyroJerk-mean()-X         68	fBodyGyro-meanFreq()-Y       
28	tBodyGyroJerk-mean()-Y         69	fBodyGyro-meanFreq()-Z         
29	tBodyGyroJerk-mean()-Z         70	fBodyAccMag-mean()           
30	tBodyGyroJerk-std()-X          71	fBodyAccMag-std()              
31	tBodyGyroJerk-std()-Y          72	fBodyAccMag-meanFreq()       
32	tBodyGyroJerk-std()-Z          73	fBodyBodyAccJerkMag-mean()     
33	tBodyAccMag-mean()             74	fBodyBodyAccJerkMag-std()    
34	tBodyAccMag-std()              75	fBodyBodyAccJerkMag-meanFreq() 
35	tGravityAccMag-mean()          76	fBodyBodyGyroMag-mean()      
36	tGravityAccMag-std()           77	fBodyBodyGyroMag-std()         
37	tBodyAccJerkMag-mean()         78	fBodyBodyGyroMag-meanFreq()  
38	tBodyAccJerkMag-std()          79	fBodyBodyGyroJerkMag-mean()    
39	tBodyGyroMag-mean()            80	fBodyBodyGyroJerkMag-std()   
40	tBodyGyroMag-std()             81	fBodyBodyGyroJerkMag-meanFreq()
41	tBodyGyroJerkMag-mean()        









































