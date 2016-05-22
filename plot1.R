source("getAndCleanData.R")

png(filename = "plot1.png", width = 480, height = 480)

# Creates a histogram on the frequency of the Global Active Power variable
hist(powerData$Global_active_power, xlab="Global Active Power (kilowatts)",
     main = "Global Active Power", col= "red")

dev.off()