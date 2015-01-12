GetFile <- function(){
  fileOriginal <- read.csv("household_power_consumption.txt", sep=";")
  file <- fileOriginal
  file$Date <- as.character(file$Date)
  file$Time <- as.character(file$Time)
  file$DateTime <- paste(file$Date, file$Time, sep="")
  file$DateTime <- strptime(file$DateTime, format="%d/%m/%Y %H:%M:%S" )
  file$Date <- as.Date(file$Date, format="%d/%m/%Y")
  file <- file[file$Date == as.Date("2007-02-01") | file$Date== as.Date("2007-02-02"),]

  #file$Global_active_power <- as.numeric(file$Global_active_power)
  file$Global_active_power <- as.numeric(as.character(file$Global_active_power))
  file$Sub_metering_2 <- as.numeric(as.character(file$Sub_metering_2))
  file$Sub_metering_1 <- as.numeric(as.character(file$Sub_metering_1))
  file$Voltage <- as.numeric(as.character(file$Voltage))
  file$Global_reactive_power <- as.numeric(as.character(file$Global_reactive_power))
  
  
  file$Date <- NULL
  file$Time <- NULL
  message("file tidied ups")
  file
} 