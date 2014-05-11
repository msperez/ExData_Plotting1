setwd("~/R/ExData_Plotting1/")
#arq<-read.csv("~/R/data/household_power_consumption.txt",sep=";")
arq$NewDate <- as.Date(strptime(arq$Date, "%d/%m/%Y"))
feb2007<-arq[(arq$NewDate == "2007-02-01" | arq$NewDate == "2007-02-02"),]
hist(as.numeric(feb2007$Global_active_power)/1000,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="Red")
dev.copy(png,file="plot1.png")
dev.off()
