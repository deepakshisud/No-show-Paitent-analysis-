install.packages('plyr')
install.packages('dplyr')
install.packages('ggplot2')
install.packages('stringr')
install.packages('scales')
install.packages('tidyr')
install.packages('lubridate')
install.packages('gridExtra')
install.packages('lattice')
install.packages('caret')
install.packages('grid')
install.packages('rpart')
install.packages('rpart.plot')
install.packages('RColorBrewer')
library(plyr)
library(dplyr)
library(ggplot2)
library(stringr)
library(scales)
library(tidyr)
library(lubridate)
library(gridExtra)
library(grid)
library(lattice)
library(caret)
library(rpart)
library(rpart.plot)
library(RColorBrewer)

#First we read the .csv file into a dataframe called rawdata
rawdata <- read.table("No-show-data.csv", header=TRUE, sep=",", stringsAsFactors=TRUE)
#The raw data is then loaded into the 'newdata' dataframe, this is the dataframe which we'll be using
newdata <- rawdata

#Checking the structure of the dataframe
str(newdata)

#Changing date columns to date datatype
newdata$AppointmentRegistration <- ymd_hms(newdata$AppointmentRegistration)
newdata$ApointmentData <- ymd_hms(newdata$ApointmentData)

#Changing logical columns to logical datatype
newdata$Diabetes <- as.logical(newdata$Diabetes)
newdata$Alcoholism <- as.logical(newdata$Alcoholism)
newdata$Hipertension <- as.logical(newdata$Hipertension)
newdata$Scholarship <- as.logical(newdata$Scholarship)
newdata$Tuberculosis <- as.logical(newdata$Tuberculosis)
newdata$SMS_received <- as.logical(newdata$SMS_received)

str(newdata)