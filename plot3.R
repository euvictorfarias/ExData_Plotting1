## PLOT 3

## Call getDataset
source("getDataset.R")

## Store the data on "tabela"
tabela <- getDataset()

## Build the histogram on screen
datetime <- strptime(paste(tabela$Date, tabela$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, tabela$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(datetime, tabela$Sub_metering_2, type="l", col="red")
lines(datetime, tabela$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

## Store the graphic in "plot3.png", if it does not exists
if(!file.exists("plot3.png")){
  dev.copy(png, file = "plot3.png", width = 480, height = 480, units = "px")
  dev.off()
}