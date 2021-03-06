#Loading data
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#subsetting data (taking 2 days data)
subData<-subset(data,data$Date%in%c("1/2/2007","2/2/2007"))

#merging date and time together
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")


png("plot3.png", width=480, height=480)
plot(datetime, as.numeric(subData$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(datetime, as.numeric(subData$Sub_metering_2), type="l", col="red")
lines(datetime, as.numeric(subData$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
