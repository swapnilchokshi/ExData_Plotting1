power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";" , stringsAsFactors = FALSE, dec = ".")
head(power)
ncol(power)
colnames(power)
head(power[,3])

power <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalactivepower <- as.numeric(power$Global_active_power)
head(globalactivepower)
par(mfrow = c(1,1))

hist(globalactivepower, col = "red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")

dev.off()
