# mechaCar

# Table of Contents 
  - [Resources](#resources)
  - [Data](#data)
  - [Overview](#overview)
  - [Results](#results)

### Resources

Software: R, Rstudio, ggplot2, dpylr, tidyverse

### Data

Data: MechaCar_mpg.csv, Suspension_Coil.csv

### Overview

This project uses R in combination with Rstudio to perform various statistical analysis on car data. A shapiro-wilks test is performed to check for normality. A multiple linear regression model is used to test for statistical significance between various variables and miles per gallon. Since our data types are continuous and we have more than one independent variable a multiple linear regression model will work nicely. We are using it to see how much variance the dependent variable (MPG) is accounted for in a linear combination of independent variables. 


### Results 
After performing various statistical tests we can see that ground clearance and vehicle length play a large part in fuel efficiency. A more detailed write up of this information is available here https://raw.githubusercontent.com/noops/mechaCar/master/carAnalysis/mechaCarWriteUp

![MPG Plot](carAnalysis/mpgPlot.pdf)
