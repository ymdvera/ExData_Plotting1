#read the full data into R
fulldata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

#Subset the data from the dates 2007-02-01 and 2007-02-02 and store it into dataset power
power <- fulldata[fulldata$Date == "1/2/2007" | fulldata$Date =="2/2/2007",]
  
#convert the Date and Time variables to Date/Time classes 
power$Date <- as.Date(power$Date, "%d/%m/%Y")
power$Time <- as.POSIXct(strptime(paste(power$Date, " ", power$Time), "%Y-%m-%d %H:%M:%S"))
