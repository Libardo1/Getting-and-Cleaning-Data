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
1	ID                             
2	activity_label                 
3	tBodyAcc-mean()-X              
4	tBodyAcc-mean()-Y              
5	tBodyAcc-mean()-Z              
6	tBodyAcc-std()-X               
7	tBodyAcc-std()-Y               
8	tBodyAcc-std()-Z               
9	tGravityAcc-mean()-X           
10	tGravityAcc-mean()-Y           
11	tGravityAcc-mean()-Z           
12	tGravityAcc-std()-X            
13	tGravityAcc-std()-Y            
14	tGravityAcc-std()-Z            
15	tBodyAccJerk-mean()-X          
16	tBodyAccJerk-mean()-Y          
17	tBodyAccJerk-mean()-Z          
18	tBodyAccJerk-std()-X           
19	tBodyAccJerk-std()-Y           
20	tBodyAccJerk-std()-Z           
21	tBodyGyro-mean()-X             
22	tBodyGyro-mean()-Y             
23	tBodyGyro-mean()-Z             
24	tBodyGyro-std()-X              
25	tBodyGyro-std()-Y              
26	tBodyGyro-std()-Z              
27	tBodyGyroJerk-mean()-X         
28	tBodyGyroJerk-mean()-Y         
29	tBodyGyroJerk-mean()-Z         
30	tBodyGyroJerk-std()-X          
31	tBodyGyroJerk-std()-Y          
32	tBodyGyroJerk-std()-Z          
33	tBodyAccMag-mean()             
34	tBodyAccMag-std()              
35	tGravityAccMag-mean()          
36	tGravityAccMag-std()           
37	tBodyAccJerkMag-mean()         
38	tBodyAccJerkMag-std()          
39	tBodyGyroMag-mean()            
40	tBodyGyroMag-std()             
41	tBodyGyroJerkMag-mean()        
42	tBodyGyroJerkMag-std()       
43	fBodyAcc-mean()-X              
44	fBodyAcc-mean()-Y            
45	fBodyAcc-mean()-Z              
46	fBodyAcc-std()-X             
47	fBodyAcc-std()-Y               
48	fBodyAcc-std()-Z             
49	fBodyAcc-meanFreq()-X          
50	fBodyAcc-meanFreq()-Y        
51	fBodyAcc-meanFreq()-Z          
52	fBodyAccJerk-mean()-X        
53	fBodyAccJerk-mean()-Y          
54	fBodyAccJerk-mean()-Z        
55	fBodyAccJerk-std()-X           
56	fBodyAccJerk-std()-Y         
57	fBodyAccJerk-std()-Z           
58	fBodyAccJerk-meanFreq()-X    
59	fBodyAccJerk-meanFreq()-Y      
60	fBodyAccJerk-meanFreq()-Z    
61	fBodyGyro-mean()-X             
62	fBodyGyro-mean()-Y           
63	fBodyGyro-mean()-Z             
64	fBodyGyro-std()-X            
65	fBodyGyro-std()-Y              
66	fBodyGyro-std()-Z            
67	fBodyGyro-meanFreq()-X         
68	fBodyGyro-meanFreq()-Y       
69	fBodyGyro-meanFreq()-Z         
70	fBodyAccMag-mean()           
71	fBodyAccMag-std()              
72	fBodyAccMag-meanFreq()       
73	fBodyBodyAccJerkMag-mean()     
74	fBodyBodyAccJerkMag-std()    
75	fBodyBodyAccJerkMag-meanFreq() 
76	fBodyBodyGyroMag-mean()      
77	fBodyBodyGyroMag-std()         
78	fBodyBodyGyroMag-meanFreq()  
79	fBodyBodyGyroJerkMag-mean()    
80	fBodyBodyGyroJerkMag-std()   
81	fBodyBodyGyroJerkMag-meanFreq()

