# Author: Ming-Kuang Daniel Wu (mk.danilewu@gmail.com)

# set working directory - this should be changed to where this script is located
# the "UCI Electric Power Consumption Dataset" should be extracted in this directory as well

setwd("C:/Users/daniel/Documents/Courses/Data Science/04 Exploratory Data Analysis/1 Graphs, Plots/project 1/ExData_Plotting1")

# make sure readFile.R is in the same directory as this script
source("readFile.R")
dataset <- readFile("household_power_consumption.txt")

# plot a histogram of Global Active Power (kw)

library(datasets)
with(dataset, plot(Sub_metering_1 ~ Timestamp, type = "l", col = "black", xlab = "", ylab = "Energy sub metering"))
with(dataset, lines(Sub_metering_2 ~ Timestamp, col = "red"))
with(dataset, lines(Sub_metering_3 ~ Timestamp, col = "blue"))

legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# copy plot to PNG file
# Note: the image dimension needs to be larger than 480x480 to display legend properly without shrinking font size
dev.copy(png, file = "plot3.png", width = 520, height = 520)
dev.off()
