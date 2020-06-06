
## This funcion only returns the correct dataset for this assignment

getDataset <- function(){
  
  tabela <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)
  tabela <- subset(tabela, Date == "2/2/2007"| Date == "1/2/2007")
  tabela$Global_active_power <- as.numeric(tabela$Global_active_power)
  
  tabela
  
}