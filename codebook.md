# Data Dictionary for tidy_data.txt


## activity -  1
        Activity description
                WALKING
                WALKING_UPSTAIRS
                WALKING_DOWNSTAIRS
                SITTING
                STANDING
                LAYING
		
## subject - 1
        Subject id number
                1 - 30
	   
## features	   
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'x, y, z' at the end is used to denote 3-axial signals in the X, Y and Z directions.

Value provided is the mean of each feature grouped by activity and subject.
	   
 [1] "TimeBodyAccelerometerMean...X"                              
 [2] "TimeBodyAccelerometerMean...Y"                              
 [3] "TimeBodyAccelerometerMean...Z"                              
 [4] "TimeGravityAccelerometerMean...X"                           
 [5] "TimeGravityAccelerometerMean...Y"                           
 [6] "TimeGravityAccelerometerMean...Z"                           
 [7] "TimeBodyAccelerometerJerkMean...X"                          
 [8] "TimeBodyAccelerometerJerkMean...Y"                          
 [9] "TimeBodyAccelerometerJerkMean...Z"                          
[10] "TimeBodyGyroscopeMean...X"                                  
[11] "TimeBodyGyroscopeMean...Y"                                  
[12] "TimeBodyGyroscopeMean...Z"                                  
[13] "TimeBodyGyroscopeJerkMean...X"                              
[14] "TimeBodyGyroscopeJerkMean...Y"                              
[15] "TimeBodyGyroscopeJerkMean...Z"                              
[16] "TimeBodyAccelerometerMagnitudeMean.."                       
[17] "TimeGravityAccelerometerMagnitudeMean.."                    
[18] "TimeBodyAccelerometerJerkMagnitudeMean.."                   
[19] "TimeBodyGyroscopeMagnitudeMean.."                           
[20] "TimeBodyGyroscopeJerkMagnitudeMean.."                       
[21] "FrequencyuencyBodyAccelerometerMean...X"                    
[22] "FrequencyuencyBodyAccelerometerMean...Y"                    
[23] "FrequencyuencyBodyAccelerometerMean...Z"                    
[24] "FrequencyuencyBodyAccelerometerMeanFrequency...X"           
[25] "FrequencyuencyBodyAccelerometerMeanFrequency...Y"           
[26] "FrequencyuencyBodyAccelerometerMeanFrequency...Z"           
[27] "FrequencyuencyBodyAccelerometerJerkMean...X"                
[28] "FrequencyuencyBodyAccelerometerJerkMean...Y"                
[29] "FrequencyuencyBodyAccelerometerJerkMean...Z"                
[30] "FrequencyuencyBodyAccelerometerJerkMeanFrequency...X"       
[31] "FrequencyuencyBodyAccelerometerJerkMeanFrequency...Y"       
[32] "FrequencyuencyBodyAccelerometerJerkMeanFrequency...Z"       
[33] "FrequencyuencyBodyGyroscopeMean...X"                        
[34] "FrequencyuencyBodyGyroscopeMean...Y"                        
[35] "FrequencyuencyBodyGyroscopeMean...Z"                        
[36] "FrequencyuencyBodyGyroscopeMeanFrequency...X"               
[37] "FrequencyuencyBodyGyroscopeMeanFrequency...Y"               
[38] "FrequencyuencyBodyGyroscopeMeanFrequency...Z"               
[39] "FrequencyuencyBodyAccelerometerMagnitudeMean.."             
[40] "FrequencyuencyBodyAccelerometerMagnitudeMeanFrequency.."    
[41] "FrequencyuencyBodyAccelerometerJerkMagnitudeMean.."         
[42] "FrequencyuencyBodyAccelerometerJerkMagnitudeMeanFrequency.."
[43] "FrequencyuencyBodyGyroscopeMagnitudeMean.."                 
[44] "FrequencyuencyBodyGyroscopeMagnitudeMeanFrequency.."        
[45] "FrequencyuencyBodyGyroscopeJerkMagnitudeMean.."             
[46] "FrequencyuencyBodyGyroscopeJerkMagnitudeMeanFrequency.."    
[47] "AngleTimeBodyAccelerometeMean.Gravity."                     
[48] "AngleTimeBodyAccelerometerJerMean.GravityMean."             
[49] "AngleTimeBodyGyroscopMeanGravityMean."                      
[50] "AngleTimeBodyGyroscopeJerMeanGravityMean."                  
[51] "Angle.XGravityMean."                                        
[52] "Angle.YGravityMean."                                        
[53] "Angle.ZGravityMean."                                        
[54] "TimeBodyAccelerometerSTD...X"                               
[55] "TimeBodyAccelerometerSTD...Y"                               
[56] "TimeBodyAccelerometerSTD...Z"                               
[57] "TimeGravityAccelerometerSTD...X"                            
[58] "TimeGravityAccelerometerSTD...Y"                            
[59] "TimeGravityAccelerometerSTD...Z"                            
[60] "TimeBodyAccelerometerJerkSTD...X"                           
[61] "TimeBodyAccelerometerJerkSTD...Y"                           
[62] "TimeBodyAccelerometerJerkSTD...Z"                           
[63] "TimeBodyGyroscopeSTD...X"                                   
[64] "TimeBodyGyroscopeSTD...Y"                                   
[65] "TimeBodyGyroscopeSTD...Z"                                   
[66] "TimeBodyGyroscopeJerkSTD...X"                               
[67] "TimeBodyGyroscopeJerkSTD...Y"                               
[68] "TimeBodyGyroscopeJerkSTD...Z"                               
[69] "TimeBodyAccelerometerMagnitudeSTD.."                        
[70] "TimeGravityAccelerometerMagnitudeSTD.."                     
[71] "TimeBodyAccelerometerJerkMagnitudeSTD.."                    
[72] "TimeBodyGyroscopeMagnitudeSTD.."                            
[73] "TimeBodyGyroscopeJerkMagnitudeSTD.."                        
[74] "FrequencyuencyBodyAccelerometerSTD...X"                     
[75] "FrequencyuencyBodyAccelerometerSTD...Y"                     
[76] "FrequencyuencyBodyAccelerometerSTD...Z"                     
[77] "FrequencyuencyBodyAccelerometerJerkSTD...X"                 
[78] "FrequencyuencyBodyAccelerometerJerkSTD...Y"                 
[79] "FrequencyuencyBodyAccelerometerJerkSTD...Z"                 
[80] "FrequencyuencyBodyGyroscopeSTD...X"                         
[81] "FrequencyuencyBodyGyroscopeSTD...Y"                         
[82] "FrequencyuencyBodyGyroscopeSTD...Z"                         
[83] "FrequencyuencyBodyAccelerometerMagnitudeSTD.."              
[84] "FrequencyuencyBodyAccelerometerJerkMagnitudeSTD.."          
[85] "FrequencyuencyBodyGyroscopeMagnitudeSTD.."                  
[86] "FrequencyuencyBodyGyroscopeJerkMagnitudeSTD.."              
[87] "activity"                                                   
[88] "subject"  
