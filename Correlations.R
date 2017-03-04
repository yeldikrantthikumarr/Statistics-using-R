#Efficient way of calculating correlation matrix from existing dataset from R.

#loading dataset
?swiss
data(swiss)
#lets first get the correlation for all the variables in the dataset

cor(swiss)
#Since, we have data displayed in decimals. The data looks clumzy, so lets make it round to two decimals.
round(cor(swiss),2)
#We see,Fertility is strongly negative correlated with Education, Examination
#Fertility is positively correlated with Catholic, Agriculture, Infant.Mortality
#Lets test, one pair of variables at a time.
#R Give, hypothesis test and confidence interval(0.05 or 0.01)

cor.test(swiss$Fertility,swiss$Education)

#we have t test i,e hypothesis test value 
#the degress of freedom shown as 45 (i.e we have 47 observation, since two groups so df = n-2)


#To get p-value for entire matrix, plz use Hmisc package

install.packages("Hmisc")
require("Hmisc")
rcorr(as.matrix(swiss)) 
# Convert data.frame to matrix, using "as.matrix " Since, we are caluclating for matrix of values.
#Shows probability values in seperate table ( to determine strongly significant or not)
#Inference: All Values are statistically significant, except few values for Infant Mortality.

#correlation is most used method to signify the relationship between quantitative variables.






