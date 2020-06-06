## PLOT 1

## Call getDataset
source("getDataset.R")

## Store the data on "tabela"
tabela <- getDataset()

## Build the histogram on screen
hist(tabela$Global_active_power, breaks = 12, col = "red", xlab = NULL, main = NULL)
title(main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

## Store the graphic in "plot1.png", if it does not exists
if(!file.exists("plot1.png")){
  dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px")
  dev.off()
}
