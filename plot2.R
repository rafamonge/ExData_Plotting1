
source("GetFile.R")
png(filename = "plot2.png")
file <-GetFile()
plot( file$DateTime,file$Global_active_power,type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
message("done")
