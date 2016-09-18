# loading data
source("read.R")
data <- readData()

# creating device
png("plot4.png", height=480, width=480)
par(mfrow=c(2,2))
with(data,{
	plot(DateTime, Global_active_power, pch=22, type="l", ylab="Global Active Power (kilowatts)")
	plot(DateTime, Voltage, pch=22, type="l", ylab="Global Active Power (kilowatts)")
	plot(DateTime, Sub_metering_1,type="l", ylab="Energy sub metering")
	points(DateTime, Sub_metering_2, type="l", col="red")
	points(DateTime, Sub_metering_3, type="l", col="blue")
	plot(DateTime, Global_reactive_power, pch=22, type="l")
	}
)
dev.off()