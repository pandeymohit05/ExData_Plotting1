#Loading data
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#subsetting data (taking 2 days data)
subData<-subset(data,data$Date%in%c("1/2/2007","2/2/2007"))
 
globalActivePower <- as.numeric(subData$Global_active_power)
#merging date and time together
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()