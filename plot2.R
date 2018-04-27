
#Read Data
x<-read.table('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?')
x<-x[x$Date=='1/2/2007' | x$Date=='2/2/2007',]
x$Date_time <-strptime(paste(x$Date , x$Time) , "%d/%m/%Y %H:%M:%S")


#plot Req graph
png(filename='plot2.png', units='px', height=480,width=480)
plot(x$Date_time,x$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='' ,  type="l")

dev.off()