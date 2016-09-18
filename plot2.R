# loading data
source("read.R")
data <- readData()

# creating device
png("plot2.png", height=480, width=480)
with(data, plot(DateTime, Global_active_power, pch=22, type="l", ylab="Global Active Power (kilowatts)"))
dev.off()