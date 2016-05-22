# Download the data if not available
if(!file.exists("dataset.zip")){
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                  "dataset.zip")
    unzip("dataset.zip")
}

# Load data from .txt file
powerData <- read.table("household_power_consumption.txt",sep = ";", header = TRUE,
                        colClasses = c("character", "character", "numeric", "numeric", "numeric"
                                       , "numeric", "numeric", "numeric", "numeric"),
                        na.strings = "?")

# Merge date and time columns into 1 single column
powerData$DateTime <- paste(powerData$Date, powerData$Time, sep = " ")
powerData          <- powerData[,-1]
powerData          <- powerData[,-1]
powerData$DateTime <- strptime(powerData$DateTime, format = "%d/%m/%Y %H:%M:%S")

# Limit data to desired date range
powerData <- powerData[powerData$DateTime >= "2007-02-01",]
powerData <- powerData[powerData$DateTime < "2007-02-03",]

powerData <- na.omit(powerData)