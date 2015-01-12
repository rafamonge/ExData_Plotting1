
source("GetFile.R")
png(filename = "plot1.png")
file <-GetFile()
hist(file$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
dev.off()