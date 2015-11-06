plot2 <- function() {

#Read the household_power_consumption.txt file (from 66638th to 69517th row)
#I have saved the file directly in my working directory
fileName <- paste(getwd(),"/","household_power_consumption.txt",sep="")
relevantFileData <- read.table(fileName,skip=66637,nrow=2880,col.names = colnames(read.table(fileName, nrow = 1,header=TRUE,sep=";")),sep=";")

#Draw the plot on screen device
plot(relevantFileData$Time,relevantFileData$Global_active_power,type="l",xaxt="n",ylab="Global Active Power(kilowatts)")
axis(1,c(0,720,1440),c("Thu","Fri","Sat"))

#Save the plot to png file (480 pixels X 480 pixels)
dev.copy(png,file="plot2.png",width=480,height=480,units="px")
dev.off()

}
