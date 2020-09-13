#import libraries
library(ggplot2)
library(tidyverse)
library(dplyr)


#read in csv files
mechaData <- read_csv('MechaCar_mpg.csv')
suspensionData <- read_csv('Suspension_Coil.csv')


#test for normality of mpg data via shapiro-wilks test
shapiro.test(mechaData$mpg)
#p-value >.05, this data is normally distributed

#check graph as well
ggplot(mechaData, aes(mpg)) + geom_density()

# multiple linear regression
mechaMatrix <- as.matrix(mechaData[,c("vehicle length", "vehicle weight", "spoiler angle", "ground clearance", "mpg")])

#calculate r using matrix
cor(mechaMatrix)

#variables of interest: vehicle length, ground clearance

#create linear regression with variables of interest
linReg <- lm(mpg ~ `vehicle length` + `ground clearance`,data = mechaData)

summary(linReg)

#create statistic summary for suspension data grouped by manufacturing lot
suspensionSummary <- suspensionData %>% group_by(Manufacturing_Lot) %>% summarise(meanPSI = mean(PSI), medianPSI = median(PSI), varPSI = var(PSI), stdevPSI = sd(PSI))

#perform t-test on suspension data
t.test(suspensionData$PSI, mu=1500)
