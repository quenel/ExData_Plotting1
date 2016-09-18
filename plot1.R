# loading data
source("read.R")
data <- readData()

# using png device
png("plot1.png", height=480, width=480)
hist(data$Global_active_power, col="red", xlab="Global Active Power (killowatts)", main="Global Active Power")
dev.off()