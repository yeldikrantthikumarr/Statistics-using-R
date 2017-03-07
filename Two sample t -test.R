#Lets Compare "means" using t-test
#Its one of the known-common inferential test statistics is two sample t-test
#i.e comparing means of two different groups
#load a dataset called, "sleep"

data(sleep)
dim(sleep)
summary(sleep)
str(sleep)
#Lets ignore ID for a while as it is a unique one.
sleep[1:5,] #selecting 1to 5
sd<-sleep[,1:2]
sd[1:5,] #displays first 5 observations/cases

#Quick graphical plots to check data
hist(sd$extra,col ="blue" )
boxplot(extra ~ group,data=sd,col="red")
#Upon looking at boxplot, it is shown that these two groups(1 &2) statistically significant

#Performing: Independent 2 Group T-test using R functions "t.test"

t.test(extra ~ group, data =sd)
#using our own choices
#lets do one tail t-test
t.test(extra~group,data=sd,alternative="less",conf.level=0.80)



