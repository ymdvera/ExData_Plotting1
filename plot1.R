source("read_data.R")

png("plot1.png", width = 480, height = 480, units = "px")
hist(power$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()