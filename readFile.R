# Author: Ming-Kuang Daniel Wu (mk.danilewu@gmail.com)

readFile <- function(fname) {
    
    # read raw data
    rawData <- read.table(fname, header=TRUE, sep=";",
                          stringsAsFactors=F, 
                          na.strings=c("", "NA", "?"))
    
    # exam the data
    head(rawData)
    print(paste("Raw data set row count: ", nrow(rawData)))
    
    # convert first two columns to Date & Time types from strings
    rawData$Timestamp <- with(rawData, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))
    
    # double check the data types of the data frame, Date and Time should be of proper types
    str(rawData)
    
    # subsetting data
    rawData <- subset(rawData, Timestamp >= as.POSIXct("2007-02-01") & Timestamp < as.POSIXct("2007-02-03"))
    
    # exam the subset data
    head(rawData)
    print(paste("Subset data row count: ", nrow(rawData)))
    
    return (rawData)
}