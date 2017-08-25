# Codebook

# 
# Intermediate Variables

* _allData:_ Contains the merged information that is tidied at eahc step until step 5
* _ColumnNames:_ used to store the variable names
* _ColumnsToExtract:_ vector containing the indexes of the variables to be extracted from the initial data set
* _Activity:_ factor with levels from the contend of "activity_labels.txt" used to put descritives names in the activity column
* _allDataLong:_ version "melted" of allData where each value in one row 
* _allDataSum:_ used to contain the averages of each variable still with each value in one row 
* _allDataFinal:_ resultado final

#
#  Data set final result (allDatafinal)

* _Saved as "tidydataset.txt"_

* _Content:_

 1. _activity:_   Activity performed  - factor -> 6 levels (1-WALKING 2-WALKING_UPSTAIRS 3-WALKING_DOWNSTAIRS 4-SITTING 5-STANDING  6-LAYING ) 
 2. _subjectid:_  Subject identification  - integer(1-30)                                                                           
 3. _tbodyaccelerationmeanaxisx:_ (time domain signal) Average of means of body acceleration along x axis by activity and subject - numeric                         
 4. _tbodyaccelerationmeanaxisy:_ (time domain signal) Average of means of body acceleration along y axis by activity and subject - numeric                   
 5. _tbodyaccelerationmeanaxisz:_ (time domain signal) Average of means of body acceleration along z axis by activity and subject - numeric                           
 6. _tbodyaccelerationstandarddeviationaxisx:_ (time domain signal) Average of standard deviations body linear acceleration along x axis by activity and subject - numeric            
 7. _tbodyaccelerationstandarddeviationaxisy:_ (time domain signal) Average of standard deviations of body linear acceleration along y axis by activity and subject - numeric             
 8. _tbodyaccelerationstandarddeviationaxisz:_ (time domain signal) Average of standard deviations of body linear acceleration along z axis by activity and subject - numeric            
 9. _tgravityaccelerationmeanaxisx:_ (time domain signal) Average of means of gravity acceleration along x axis by activity and subject - numeric                      
10. _tgravityaccelerationmeanaxisy:_ (time domain signal) Average of means of gravity acceleration along y axis by activity and subject - numeric                       
11. _tgravityaccelerationmeanaxisz:_ (time domain signal) Average of means of gravity acceleration along z axis by activity and subject - numeric                       
12. _tgravityaccelerationstandarddeviationaxisx:_ (time domain signal) Average of standard deviations of gravity acceleration along x axis by activity and subject - numeric          
13. _tgravityaccelerationstandarddeviationaxisy:_ (time domain signal) Average of standard deviations of gravity acceleration along y axis by activity and subject - numeric          
14. _tgravityaccelerationstandarddeviationaxisz:_ (time domain signal) Average of standard deviations of gravity acceleration along z axis by activity and subject - numeric          
15. _tbodyaccelerationjerkmeanaxisx:_ (time domain signal) Average of means of jerk of body linear acceleration along x axis by activity and subject - numeric                      
16. _tbodyaccelerationjerkmeanaxisy:_ (time domain signal) Average of means of jerk of body linear acceleration along y axis by activity and subject - numeric                      
17. _tbodyaccelerationjerkmeanaxisz:_ (time domain signal) Average of means of jerk of body linear acceleration along z axis by activity and subject - numeric                      
18. _tbodyaccelerationjerkstandarddeviationaxisx:_ (time domain signal) Average of standard deviations of jerk of body linear acceleration along x axis by activity and subject - numeric         
19. _tbodyaccelerationjerkstandarddeviationaxisy:_ (time domain signal) Average of standard deviations of jerk of body linear acceleration along y axis by activity and subject - numeric         
20. _tbodyaccelerationjerkstandarddeviationaxisz:_ (time domain signal) Average of standard deviations of jerk of body linear acceleration along z axis by activity and subject - numeric         
21. _tbodygyromeanaxisx:_ (time domain signal) Average of means of angular velocity along x axis by activity and subject - numeric                                   
22. _tbodygyromeanaxisy:_ (time domain signal) Average of means of angular velocity along y axis by activity and subject - numeric                                  
23. _tbodygyromeanaxisz:_ (time domain signal) Average of means of angular velocity along z axis by activity and subject - numeric                                  
24. _tbodygyrostandarddeviationaxisx:_ (time domain signal) Average of standard deviations of angular velocity along x axis by activity and subject - numeric                     
25. _tbodygyrostandarddeviationaxisy:_ (time domain signal) Average of standard deviations of angular velocity along y axis by activity and subject - numeric                     
26. _tbodygyrostandarddeviationaxisz:_ (time domain signal) Average of standard deviations of angular velocity along z axis by activity and subject - numeric                     
27. _tbodygyrojerkmeanaxisx:_ (time domain signal) Average of means of jerk of angular velocity along x axis by activity and subject - numeric                              
28. _tbodygyrojerkmeanaxisy:_ (time domain signal) Average of means of jerk of angular velocity along y axis by activity and subject - numeric                              
29. _tbodygyrojerkmeanaxisz:_ (time domain signal) Average of means of jerk of angular velocity along z axis by activity and subject - numeric                              
30. _tbodygyrojerkstandarddeviationaxisx:_ (time domain signal) Average of standard deviations of jerk of angular velocity along x axis by activity and subject - numeric                 
31. _tbodygyrojerkstandarddeviationaxisy:_ (time domain signal) Average of standard deviations of jerk of angular velocity along y axis by activity and subject - numeric                 
32. _tbodygyrojerkstandarddeviationaxisz:_ (time domain signal) Average of standard deviations of jerk of angular velocity along z axis by activity and subject - numeric                 
33. _tbodyaccelerationmagnitudemean:_ (time domain signal) Average of means of magnitude of body linear acceleration by activity and subject - numeric                      
34. _tbodyaccelerationmagnitudestandarddeviation:_ (time domain signal) Average of standard deviations of magnitude of body linear acceleration by activity and subject - numeric         
35. _tgravityaccelerationmagnitudemean:_ (time domain signal) Average of means of magnitude of gravity acceleration by activity and subject - numeric                   
36. _tgravityaccelerationmagnitudestandarddeviation:_ (time domain signal) Average of standard deviations of magnitude of gravity acceleration by activity and subject - numeric      
37. _tbodyaccelerationjerkmagnitudemean:_ (time domain signal) Average of means jerk of magnitude of body linear acceleration by activity and subject - numeric                 
38. _tbodyaccelerationjerkmagnitudestandarddeviation:_ (time domain signal) Average of standard deviations jerk of magnitude of body linear acceleration by activity and subject - numeric     
39. _tbodygyromagnitudemean:_ (time domain signal) Average of means of magnitude of angular velocity by activity and subject - numeric                              
40. _tbodygyromagnitudestandarddeviation:_ (time domain signal) Average of standard deviations of magnitude of angular velocity by activity and subject - numeric                
41. _tbodygyrojerkmagnitudemean:_ (time domain signal) Average of means of jerk of magnitude of angular velocity by activity and subject - numeric                          
42. _tbodygyrojerkmagnitudestandarddeviation:_ (time domain signal) Average of standard deviations of time domain jerk signal of magnitude of angular velocity by activity and subject - numeric            
43. _fbodyaccelerationmeanaxisx:_ (frequency domain signal) Average of means of body acceleration along x axis by activity and subject - numeric                          
44. _fbodyaccelerationmeanaxisy:_ (frequency domain signal) Average of means of body acceleration along y axis by activity and subject - numeric                          
45. _fbodyaccelerationmeanaxisz:_ (frequency domain signal) Average of means of body acceleration along z axis by activity and subject - numeric                          
46. _fbodyaccelerationstandarddeviationaxisx:_ (frequency domain signal) Average of standard deviations of body acceleration along x axis by activity and subject - numeric             
47. _fbodyaccelerationstandarddeviationaxisy:_ (frequency domain signal) Average of standard deviations of body acceleration along y axis by activity and subject - numeric             
48. _fbodyaccelerationstandarddeviationaxisz:_ (frequency domain signal) Average of standard deviations of body acceleration along z axis by activity and subject - numeric             
49. _fbodyaccelerationjerkmeanaxisx:_ (frequency domain signal) Average of means of jerk of body acceleration along x axis by activity and subject - numeric                      
50. _fbodyaccelerationjerkmeanaxisy:_ (frequency domain signal) Average of means of jerk of body acceleration along y axis by activity and subject - numeric                      
51. _fbodyaccelerationjerkmeanaxisz:_ (frequency domain signal) Average of means of jerk of body acceleration along z axis by activity and subject - numeric                      
52. _fbodyaccelerationjerkstandarddeviationaxisx:_ (frequency domain signal) Average of standard deviations of jerk of body acceleration along x axis by activity and subject - numeric         
53. _fbodyaccelerationjerkstandarddeviationaxisy:_ (frequency domain signal) Average of standard deviations of jerk of body acceleration along y axis by activity and subject - numeric         
54. _fbodyaccelerationjerkstandarddeviationaxisz:_ (frequency domain signal) Average of standard deviations of jerk of body acceleration along z axis by activity and subject - numeric         
55. _fbodygyromeanaxisx:_ (frequency domain signal) Average of means of angular velocity along x axis by activity and subject - numeric                                  
56. _fbodygyromeanaxisy:_ (frequency domain signal) Average of means of angular velocity along y axis by activity and subject - numeric                                  
57. _fbodygyromeanaxisz:_ (frequency domain signal) Average of means of angular velocity along z axis by activity and subject - numeric                                  
58. _fbodygyrostandarddeviationaxisx:_ (frequency domain signal) Average of standard deviations of angular velocity along x axis by activity and subject - numeric                     
59. _fbodygyrostandarddeviationaxisy:_ (frequency domain signal) Average of standard deviations of angular velocity along y axis by activity and subject - numeric                     
60. _fbodygyrostandarddeviationaxisz:_ (frequency domain signal) Average of standard deviations of angular velocity along z axis by activity and subject - numeric                     
61. _fbodyaccelerationmagnitudemean:_ (frequency domain signal) Average of means of magnitute of body acceleration by activity and subject - numeric                     
62. _fbodyaccelerationmagnitudestandarddeviation:_ (frequency domain signal) Average of standard deviations of magnitute of body acceleration by activity and subject - numeric        
63. _fbodybodyaccelerationjerkmagnitudemean:_ Average of means of jerk of magnitute of body acceleration activity and subject - numeric             
64. _fbodybodyaccelerationjerkmagnitudestandar(frequency domain signal) ddeviation:_ Average of standard deviations of jerk of magnitute of body acceleration by activity and subject - numeric
65. _fbodybodygyromagnitudemean:_ (frequency domain signal) Average of means of magnitute of angular velocity by activity and subject - numeric                          
66. _fbodybodygyromagnitudestandarddeviation:_ (frequency domain signal) Average of standard deviations of magnitute of angular velocity by activity and subjecc            
67. _fbodybodygyrojerkmagnitudemean:_ (frequency domain signal) Average of means of jerk of magnitute of angular velocity by activity and subject - numeric                     
68. _fbodybodygyrojerkmagnitudestandarddeviati