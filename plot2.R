source("getAndCleanData.R")

png(filename = "plot2.png", width = 480, height = 480)

# Creates a line chart with the time as x and global active variable as y
plot(powerData$DateTime, powerData$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()