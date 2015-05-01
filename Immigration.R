library(corrplot)

##Pre-cleaning, interopolated NAs by averaging values on either side...if a value was the first point averaged the two
#following points
##Removed specific legitimacy and effectiveness indicators because there was not variation

#Read in data
rawData<-read.table("/users/bcarancibia/Desktop/HondoTransp.csv", header=TRUE, sep=",")
rawData<-rawData[1:9,]
#calculate correlations
x<-cor(rawData)
#plot correlations
corrplot(x, method = "square")
#correlation plot matrix
plot(rawData)

#linear regression
#me screwing-around with some linear models
model<-lm(rawData$Homicides ~ ., data=rawData)
model2<-lm(Homicides ~ CrimRemovals + Poverty + PPP + GDP, data = rawData)

