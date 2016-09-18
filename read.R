readData <- function(){
	# reads data from the data file
	all <- read.table("household_power_consumption.txt", sep = ";", header=TRUE)
	
	# removing bad data
	data <- subset(all, Global_active_power != "?")
	
	# adding new column for DateTime
	data$DateTime <- paste(data$Date, data$Time, sep=" ")
	
	# casting variable to the proper data type
	data<-transform(data, Date=as.Date(Date, "%d/%m/%Y"), Global_active_power=as.numeric(Global_active_power), Global_reactive_power=as.numeric(Global_reactive_power), Voltage=as.numeric(Global_active_power), Global_intensity=as.numeric(Global_intensity), Sub_metering_1=as.numeric(Sub_metering_1), Sub_metering_2=as.numeric(Sub_metering_2), Sub_metering_3=as.numeric(Sub_metering_3), DateTime=as.POSIXct(strptime(DateTime, "%d/%m/%Y %H:%M:%S")))
	
	# creates the data subset with row in the target date range
	data <- subset(data, Date == as.Date("2007/02/01", "%Y/%m/%d") | Date == as.Date("2007/02/02", "%Y/%m/%d"))
	
	# let's not keep all data in memory
	rm(all)
	
	return(data)
}