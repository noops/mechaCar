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