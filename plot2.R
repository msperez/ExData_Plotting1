setwd("~/R/ExData_Plotting1/")
arq<-read.csv("~/R/data/household_power_consumption.txt",sep=";")
arq$NewDateTime <- strptime(paste(arq$Date,arq$Time), "%d/%m/%Y %H:%M:%S")
feb2007<-arq[(arq$NewDate == "2007-02-01" | arq$NewDate == "2007-02-02"),]
plot(feb2007$NewDateTime,as.numeric(feb2007$Global_active_power)/1000,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,file="plot2.png")
dev.off()
