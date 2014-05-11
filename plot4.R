setwd("~/R/ExData_Plotting1/")
arq<-read.csv("~/R/data/household_power_consumption.txt",sep=";")
arq$NewDateTime <- strptime(paste(arq$Date,arq$Time), "%d/%m/%Y %H:%M:%S")
feb2007<-arq[(arq$NewDate == "2007-02-01" | arq$NewDate == "2007-02-02"),]

par(mfcol=c(2,2))

plot(feb2007$NewDateTime,as.numeric(feb2007$Global_active_power)/1000,type="l",ylab="Global Active Power (kilowatts)",xlab="")

plot(feb2007$NewDateTime,feb2007$Sub_metering_1,type="l",ylab="Global Active Power (kilowatts)",xlab="")
points(feb2007$NewDateTime,feb2007$Sub_metering_2,col="red",type="l")
points(feb2007$NewDateTime,feb2007$Sub_metering_3,col="blue",type="l")
legend("topright",text.font=1,lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_1"))

plot(feb2007$NewDateTime,feb2007$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(feb2007$NewDateTime,as.numeric(feb2007$Global_reactive_power)/1000,type="l",ylab="global_reactive_power",xlab="datetime")


dev.copy(png,file="plot4.png")
dev.off()
