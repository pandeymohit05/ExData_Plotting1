#Loading data
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#subsetting data (taking 2 days data)
subData<-subset(data,data$Date%in%c("1/2/2007","2/2/2007"))


#Constructing histogram and saving it in plot1.png file
png("plot1.png",width = 480,height = 480)
hist(as.numeric(subData$Global_active_power),main = "Global Active Power",col = "red",xlab = "Global_active_power(Kilowatt)",ylab = "Frequency")
dev.off()