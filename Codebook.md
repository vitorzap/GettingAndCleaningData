# Codebook

# 
# Intermediate Variables

* **allData:** Contains the merged information that is tidied at eahc step until step 5
* **ColumnNames:** used to store the variable names
* **ColumnsToExtract:** vector containing the indexes of the variables to be extracted from the initial data set
* **Activity:** factor with levels from the contend of "activity**labels.txt" used to put descritives names in the activity column
* **allDataLong:** version "melted" of allData where each value in one row 
* **allDataSum:** used to contain the averages of each variable still with each value in one row 
* **allDataFinal:_ resultado final

#
#  Data set obtained as final result (allDatafinal)

#### _*Saved as "tidydataset.txt"*_

### _*Content:*_

 1. **activity:**   Activity performed  - factor -> 6 levels (1-WALKING 2-WALKING_UPSTAIRS 3-WALKING_DOWNSTAIRS 4-SITTING 5-STANDING  6-LAYING ) 
 2. **subjectid:**  Subject identification  - integer(1-30)                                                                           
 3. **tbodyaccelerationmeanaxisx:** (time domain signal) Average of means of body acceleration along x axis by activity and subject - numeric                         
 4. **tbodyaccelerationmeanaxisy:** (time domain signal) Average of means of body acceleration along y axis by activity and subject - numeric                   
 5. **tbodyaccelerationmeanaxisz:** (time domain signal) Average of means of body acceleration along z axis by activity and subject - numeric                           
 6. **tbodyaccelerationstandarddeviationaxisx:** (time domain signal) Average of standard deviations body linear acceleration along x axis by activity and subject - numeric            
 7. **tbodyaccelerationstandarddeviationaxisy:** (time domain signal) Average of standard deviations of body linear acceleration along y axis by activity and subject - numeric             
 8. **tbodyaccelerationstandarddeviationaxisz:** (time domain signal) Average of standard deviations of body linear acceleration along z axis by activity and subject - numeric            
 9. **tgravityaccelerationmeanaxisx:** (time domain signal) Average of means of gravity acceleration along x axis by activity and subject - numeric                      
10. **tgravityaccelerationmeanaxisy:** (time domain signal) Average of means of gravity acceleration along y axis by activity and subject - numeric                       
11. **tgravityaccelerationmeanaxisz:** (time domain signal) Average of means of gravity acceleration along z axis by activity and subject - numeric                       
12. **tgravityaccelerationstandarddeviationaxisx:** (time domain signal) Average of standard deviations of gravity acceleration along x axis by activity and subject - numeric          
13. **tgravityaccelerationstandarddeviationaxisy:** (time domain signal) Average of standard deviations of gravity acceleration along y axis by activity and subject - numeric          
14. **tgravityaccelerationstandarddeviationaxisz:** (time domain signal) Average of standard deviations of gravity acceleration along z axis by activity and subject - numeric          
15. **tbodyaccelerationjerkmeanaxisx:** (time domain signal) Average of means of jerk of body linear acceleration along x axis by activity and subject - numeric                      
16. **tbodyaccelerationjerkmeanaxisy:** (time domain signal) Average of means of jerk of body linear acceleration along y axis by activity and subject - numeric                      
17. **tbodyaccelerationjerkmeanaxisz:** (time domain signal) Average of means of jerk of body linear acceleration along z axis by activity and subject - numeric                      
18. **tbodyaccelerationjerkstandarddeviationaxisx:** (time domain signal) Average of standard deviations of jerk of body linear acceleration along x axis by activity and subject - numeric         
19. **tbodyaccelerationjerkstandarddeviationaxisy:** (time domain signal) Average of standard deviations of jerk of body linear acceleration along y axis by activity and subject - numeric         
20. **tbodyaccelerationjerkstandarddeviationaxisz:** (time domain signal) Average of standard deviations of jerk of body linear acceleration along z axis by activity and subject - numeric         
21. **tbodygyromeanaxisx:** (time domain signal) Average of means of angular velocity along x axis by activity and subject - numeric                                   
22. **tbodygyromeanaxisy:** (time domain signal) Average of means of angular velocity along y axis by activity and subject - numeric                                  
23. **tbodygyromeanaxisz:** (time domain signal) Average of means of angular velocity along z axis by activity and subject - numeric                                  
24. **tbodygyrostandarddeviationaxisx:** (time domain signal) Average of standard deviations of angular velocity along x axis by activity and subject - numeric                     
25. **tbodygyrostandarddeviationaxisy:** (time domain signal) Average of standard deviations of angular velocity along y axis by activity and subject - numeric                     
26. **tbodygyrostandarddeviationaxisz:** (time domain signal) Average of standard deviations of angular velocity along z axis by activity and subject - numeric                     
27. **tbodygyrojerkmeanaxisx:** (time domain signal) Average of means of jerk of angular velocity along x axis by activity and subject - numeric                              
28. **tbodygyrojerkmeanaxisy:** (time domain signal) Average of means of jerk of angular velocity along y axis by activity and subject - numeric                              
29. **tbodygyrojerkmeanaxisz:** (time domain signal) Average of means of jerk of angular velocity along z axis by activity and subject - numeric                              
30. **tbodygyrojerkstandarddeviationaxisx:** (time domain signal) Average of standard deviations of jerk of angular velocity along x axis by activity and subject - numeric                 
31. **tbodygyrojerkstandarddeviationaxisy:** (time domain signal) Average of standard deviations of jerk of angular velocity along y axis by activity and subject - numeric                 
32. **tbodygyrojerkstandarddeviationaxisz:** (time domain signal) Average of standard deviations of jerk of angular velocity along z axis by activity and subject - numeric                 
33. **tbodyaccelerationmagnitudemean:** (time domain signal) Average of means of magnitude of body linear acceleration by activity and subject - numeric                      
34. **tbodyaccelerationmagnitudestandarddeviation:** (time domain signal) Average of standard deviations of magnitude of body linear acceleration by activity and subject - numeric         
35. **tgravityaccelerationmagnitudemean:** (time domain signal) Average of means of magnitude of gravity acceleration by activity and subject - numeric                   
36. **tgravityaccelerationmagnitudestandarddeviation:** (time domain signal) Average of standard deviations of magnitude of gravity acceleration by activity and subject - numeric      
37. **tbodyaccelerationjerkmagnitudemean:** (time domain signal) Average of means jerk of magnitude of body linear acceleration by activity and subject - numeric                 
38. **tbodyaccelerationjerkmagnitudestandarddeviation:** (time domain signal) Average of standard deviations jerk of magnitude of body linear acceleration by activity and subject - numeric     
39. **tbodygyromagnitudemean:** (time domain signal) Average of means of magnitude of angular velocity by activity and subject - numeric                              
40. **tbodygyromagnitudestandarddeviation:** (time domain signal) Average of standard deviations of magnitude of angular velocity by activity and subject - numeric                
41. **tbodygyrojerkmagnitudemean:** (time domain signal) Average of means of jerk of magnitude of angular velocity by activity and subject - numeric                          
42. **tbodygyrojerkmagnitudestandarddeviation:** (time domain signal) Average of standard deviations of time domain jerk signal of magnitude of angular velocity by activity and subject - numeric            
43. **fbodyaccelerationmeanaxisx:** (frequency domain signal) Average of means of body acceleration along x axis by activity and subject - numeric                          
44. **fbodyaccelerationmeanaxisy:** (frequency domain signal) Average of means of body acceleration along y axis by activity and subject - numeric                          
45. **fbodyaccelerationmeanaxisz:** (frequency domain signal) Average of means of body acceleration along z axis by activity and subject - numeric                          
46. **fbodyaccelerationstandarddeviationaxisx:** (frequency domain signal) Average of standard deviations of body acceleration along x axis by activity and subject - numeric             
47. **fbodyaccelerationstandarddeviationaxisy:** (frequency domain signal) Average of standard deviations of body acceleration along y axis by activity and subject - numeric             
48. **fbodyaccelerationstandarddeviationaxisz:** (frequency domain signal) Average of standard deviations of body acceleration along z axis by activity and subject - numeric             
49. **fbodyaccelerationjerkmeanaxisx:** (frequency domain signal) Average of means of jerk of body acceleration along x axis by activity and subject - numeric                      
50. **fbodyaccelerationjerkmeanaxisy:** (frequency domain signal) Average of means of jerk of body acceleration along y axis by activity and subject - numeric                      
51. **fbodyaccelerationjerkmeanaxisz:** (frequency domain signal) Average of means of jerk of body acceleration along z axis by activity and subject - numeric                      
52. **fbodyaccelerationjerkstandarddeviationaxisx:** (frequency domain signal) Average of standard deviations of jerk of body acceleration along x axis by activity and subject - numeric         
53. **fbodyaccelerationjerkstandarddeviationaxisy:** (frequency domain signal) Average of standard deviations of jerk of body acceleration along y axis by activity and subject - numeric         
54. **fbodyaccelerationjerkstandarddeviationaxisz:** (frequency domain signal) Average of standard deviations of jerk of body acceleration along z axis by activity and subject - numeric         
55. **fbodygyromeanaxisx:** (frequency domain signal) Average of means of angular velocity along x axis by activity and subject - numeric                                  
56. **fbodygyromeanaxisy:** (frequency domain signal) Average of means of angular velocity along y axis by activity and subject - numeric                                  
57. **fbodygyromeanaxisz:** (frequency domain signal) Average of means of angular velocity along z axis by activity and subject - numeric                                  
58. **fbodygyrostandarddeviationaxisx:** (frequency domain signal) Average of standard deviations of angular velocity along x axis by activity and subject - numeric                     
59. **fbodygyrostandarddeviationaxisy:** (frequency domain signal) Average of standard deviations of angular velocity along y axis by activity and subject - numeric                     
60. **fbodygyrostandarddeviationaxisz:** (frequency domain signal) Average of standard deviations of angular velocity along z axis by activity and subject - numeric                     
61. **fbodyaccelerationmagnitudemean:** (frequency domain signal) Average of means of magnitute of body acceleration by activity and subject - numeric                     
62. **fbodyaccelerationmagnitudestandarddeviation:** (frequency domain signal) Average of standard deviations of magnitute of body acceleration by activity and subject - numeric        
63. **fbodybodyaccelerationjerkmagnitudemean:** Average of means of jerk of magnitute of body acceleration activity and subject - numeric             
64. **fbodybodyaccelerationjerkmagnitudestandar(frequency domain signal) ddeviation:** Average of standard deviations of jerk of magnitute of body acceleration by activity and subject - numeric
65. **fbodybodygyromagnitudemean:** (frequency domain signal) Average of means of magnitute of angular velocity by activity and subject - numeric                          
66. **fbodybodygyromagnitudestandarddeviation:** (frequency domain signal) Average of standard deviations of magnitute of angular velocity by activity and subjecc            
67. **fbodybodygyrojerkmagnitudemean:** (frequency domain signal) Average of means of jerk of magnitute of angular velocity by activity and subject - numeric                     
68. **fbodybodygyrojerkmagnitudestandarddeviation:** (frequency domain signal) Average of standard deviations of jerk of magnitute of angular velocity by activity and subject - numeric