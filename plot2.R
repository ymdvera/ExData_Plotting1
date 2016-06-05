source("read_data.R")

png("plot2.png", width = 480, height = 480, units = "px")
plot(power$Time, power$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()