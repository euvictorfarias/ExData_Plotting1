## PLOT 4

## Call getDataset
source("getDataset.R")

## Store the data on "tabela"
tabela <- getDataset()

## Build the histogram on screen
datetime <- strptime(paste(tabela$Date, tabela$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
par(mfrow = c(2,2))
plot(datetime, tabela$Global_active_power, type="l", xlab="Time", ylab="Global Active Power (kilowatts)")
plot(datetime, tabela$Voltage, type = "l", xlab = "Time", ylab = "Voltage")
plot(datetime, tabela$Sub_metering_1, type="l", xlab="Time", ylab="Energy Sub Metering")
lines(datetime, tabela$Sub_metering_2, type="l", col="red")
lines(datetime, tabela$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
plot(datetime, tabela$Global_reactive_power, type="l", xlab="Time", ylab="Global Reactive Power (kilowatts)")

## Store the graphic in "plot4.png", if it does not exists
if(!file.exists("plot4.png")){
  dev.copy(png, file = "plot4.png", width = 480, height = 480, units = "px")
  dev.off()
}