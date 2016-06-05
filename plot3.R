source("read_data.R")

png("plot3.png", width = 480, height = 480, units = "px")
plot(power$Time, power$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(power$Time, power$Sub_metering_2, col = "red")
lines(power$Time, power$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red", "blue"), lty = c(1,1,1))

dev.off()
