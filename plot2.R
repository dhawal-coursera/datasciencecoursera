data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dataNew <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

dataNew$Date <- as.Date(dataNew$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(dataNew$Date), dataNew$Time)
dataNew$Datetime <- as.POSIXct(datetime)


with(dataNew, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})