plot3 <- function() {

#Read the household_power_consumption.txt file (from 66638th to 69517th row)
#I have saved the file directly in my working directory
fileName <- paste(getwd(),"/","household_power_consumption.txt",sep="")
relevantFileData <- read.table(fileName,skip=66637,nrow=2880,col.names = colnames(read.table(fileName, nrow = 1,header=TRUE,sep=";")),sep=";")

#Draw the plot on screen device
plot(relevantFileData$Time,relevantFileData$Sub_metering_1,type="l",xaxt="n",ylab="Energy sub metering",col="black")
lines(relevantFileData$Sub_metering_2,type="l",col="red")
lines(relevantFileData$Sub_metering_3,type="l",col="blue")
axis(1,c(0,720,1440),c("Thu","Fri","Sat"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))

#Save the plot to png file (480 pixels X 480 pixels)
dev.copy(png,file="plot3.png",width=480,height=480,units="px")
dev.off()

}
