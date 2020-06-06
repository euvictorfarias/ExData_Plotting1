## PLOT 2

## Call getDataset
source("getDataset.R")

## Store the data on "tabela"
tabela <- getDataset()

## Build the histogram on screen
datetime <- strptime(paste(tabela$Date, tabela$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, tabela$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

## Store the graphic in "plot2.png", if it does not exists
if(!file.exists("plot2.png")){
  dev.copy(png, file = "plot2.png", width = 480, height = 480, units = "px")
  dev.off()
}