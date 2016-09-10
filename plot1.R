# Author: Ming-Kuang Daniel Wu (mk.danilewu@gmail.com)

# set working directory - this should be changed to where this script is located
# the "UCI Electric Power Consumption Dataset" should be extracted in this directory as well

setwd("C:/Users/daniel/Documents/Courses/Data Science/04 Exploratory Data Analysis/1 Graphs, Plots/project 1/ExData_Plotting1")

# make sure readFile.R is in the same directory as this script

source("readFile.R")
dataset <- readFile("household_power_consumption.txt")

# plot a histogram of Global Active Power (kw)

library(datasets)
with(dataset, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))

# copy plot to PNG file
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()
