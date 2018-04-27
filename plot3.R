#Read Data
x<-read.table('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?')
x<-x[x$Date=='1/2/2007' | x$Date=='2/2/2007',]
x$Date_time <-strptime(paste(x$Date , x$Time) , "%d/%m/%Y %H:%M:%S")


#plot Req graph


png(filename='plot3.png', units='px', height=480,width=480)
plot(x$Date_time,x$Sub_metering_1,ylab="Energy sub metering", xlab='' ,  type="l")
lines(x$Date_time,x$Sub_metering_2, col = 'red')
lines(x$Date_time,x$Sub_metering_3, col = 'blue')

legend("topright", 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), lty=c(1, 1, 1))
dev.off()