# loading data
source("read.R")
data <- readData()

# using png device
png("plot3.png", height=480, width=480)

# creating subset with 3 type of meterings
with(data, plot(DateTime, Sub_metering_1,type="l", ylab="Energy sub metering"))
with(data, points(DateTime, Sub_metering_2, type="l", col="red"))
with(data, points(DateTime, Sub_metering_3, type="l", col="blue"))

# adding legends
legend("topright", pch="-" ,col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()