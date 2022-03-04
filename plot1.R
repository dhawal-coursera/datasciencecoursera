data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dataNew <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


globalActivePower <- as.numeric(dataNew$Global_active_power)



hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")


png("plot1.png", width=480, height=480)
dev.off()