setwd("C:/Users/manu/Documents/coursera")
data1<-read.csv("household_power_consumption.txt",sep=";",header=T)
head(data1)
data1$Date<-as.Date(data1$Date,"%d/%m/%Y")

data2<-subset(data1, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
head(data2)
Global_active_power<-as.numeric(as.character(Global_active_power))
data2$uniDate <- as.POSIXct(paste(Date, Time), format="%Y-%m-%d %H:%M:%S")
attach(data2)
plot(uniDate,Global_active_power,type = "l",xlab="",ylab="Global Active Power (killowatts)")
dev.copy(png,file="Plot2.png")
dev.off()

