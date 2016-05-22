source("getAndCleanData.R")
png(filename = "plot4.png", width = 480, height = 480)

# Creates 4 plots layed out 2x2
par(mfrow = c(2,2))
plot(powerData$DateTime, powerData$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

plot(powerData$DateTime, powerData$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(powerData$DateTime, powerData$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = "")
lines(powerData$DateTime, powerData$Sub_metering_2, col = "red")
lines(powerData$DateTime, powerData$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1), col = c("black", "red", "blue"), bty = "n")

plot(powerData$DateTime, powerData$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactivate_power")

dev.off()