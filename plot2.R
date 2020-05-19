power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";" , stringsAsFactors = FALSE, dec = ".")
power <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
head(power)

datetime <- strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
head(datetime)
globalactivepower <- as.numeric(power$Global_active_power)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")

dev.off()
