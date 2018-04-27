#Read Data
x<-read.table('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?')
x<-x[x$Date=='1/2/2007' | x$Date=='2/2/2007',]
x$Date_time <-strptime(paste(x$Date , x$Time) , "%d/%m/%Y %H:%M:%S")


#plot Req graph
png(filename='plot1.png', units='px', height=480,width=480)

hist(x$Global_active_power,col="red" ,main="Global Active Power" , xlab="Global Active Power (kilowatts)")

dev.off()