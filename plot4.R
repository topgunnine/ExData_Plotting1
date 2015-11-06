plot4 <- function() {

#Read the household_power_consumption.txt file (from 66638th to 69517th row)
#I have saved the file directly in my working directory
fileName <- paste(getwd(),"/","household_power_consumption.txt",sep="")
relevantFileData <- read.table(fileName,skip=66637,nrow=2880,col.names = colnames(read.table(fileName, nrow = 1,header=TRUE,sep=";")),sep=";")

#Draw the plot on screen device
par(mfrow=c(2,2))

#Plot Global Active Power vs Time
plot(relevantFileData$Time,relevantFileData$Global_active_power,type="l",xaxt="n",ylab="Global Active Power",col="black")
axis(1,c(0,720,1440),c("Thu","Fri","Sat"))

#Plot Voltage vs Time
plot(relevantFileData$Time,relevantFileData$Voltage,type="l",xaxt="n",xlab="datetime",ylab="Voltage",col="black")
axis(1,c(0,720,1440),c("Thu","Fri","Sat"))

#Plot Energy sub metering vs Time
plot(relevantFileData$Time,relevantFileData$Sub_metering_1,type="l",xaxt="n",ylab="Energy sub metering",col="black")
lines(relevantFileData$Sub_metering_2,type="l",col="red")
lines(relevantFileData$Sub_metering_3,type="l",col="blue")
axis(1,c(0,720,1440),c("Thu","Fri","Sat"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.6,lty=c(1,1,1),col=c("black","red","blue"))

#Plot Global_reactive_power vs Time
plot(relevantFileData$Time,relevantFileData$Global_reactive_power,type="l",xaxt="n",xlab="datetime",ylab="Global_reactive_power",col="black")
axis(1,c(0,720,1440),c("Thu","Fri","Sat"))

#Save the plot to png file (480 pixels X 480 pixels)
dev.copy(png,file="plot4.png",width=480,height=480,units="px")
dev.off()

}
