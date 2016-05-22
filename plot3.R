source("getAndCleanData.R")

png(filename = "plot3.png", width = 480, height = 480)

# Create a line chart with the 3 sub_metering variables as y and time as x
plot(powerData$DateTime, powerData$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = "")
lines(powerData$DateTime, powerData$Sub_metering_2, col = "red")
lines(powerData$DateTime, powerData$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1), col = c("black", "red", "blue"))

dev.off()