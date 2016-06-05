source("read_data.R")

png("plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2,2))

plot(power$Time, power$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

plot(power$Time, power$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(power$Time, power$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(power$Time, power$Sub_metering_2, col = "red")
lines(power$Time, power$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red", "blue"), bty = "n", lty = c(1,1,1))

plot(power$Time, power$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
dev.off()