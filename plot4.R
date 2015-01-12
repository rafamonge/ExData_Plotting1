source("GetFile.R")

png(filename = "plot4.png")
file <-GetFile()

par(mfrow = c(2, 2))
## plot 1
plot( file$DateTime,file$Global_active_power,type="l", ylab="Global Active Power", xlab="")
## plot 2
plot( file$DateTime,file$Voltage,type="l", ylab="Voltage", xlab="datetime")

## plot 3
plot( file$DateTime, file$Sub_metering_1,type="n", ylab="Energy Sub metering", xlab="")
lines(file$DateTime, file$Sub_metering_1, col="black")
lines(file$DateTime, file$Sub_metering_2, col="red")
lines(file$DateTime, file$Sub_metering_3, col="blue")
legend("topright", pch=20,col =c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering 2", "Sub_metering_3"))

## plot 4
plot( file$DateTime,file$Global_reactive_power,type="l", ylab="Global_Reactive_Power", xlab="datetime")
dev.off()
message("done")