#, colClasses = c("Date","Time","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
ds <- read.table("C:\\Coursera\\household_power_consumption.txt", sep = ";", header = TRUE)
ds1 <- subset( ds, as.Date(ds$Date, "%d/%m/%Y") >= as.Date("2007-02-01") )
ds2 <- subset( ds1, as.Date(ds1$Date, "%d/%m/%Y") <= as.Date("2007-02-02") )
head(ds2)

hist(as.numeric(ds2$Global_active_power)/1000,col="red",main="Global Active Power",breaks=12
     ,xlab="Global Active Power (killowatts)", ylab="Frequency"
     ,xlim=c(0, 6) , ylim=c(0, 1200)
     ,axes=FALSE)
axis(1,pos=c(0,0),at=seq(0,6,by=2))
axis(2)


dev.copy(png, file = "C:\\Coursera\\plot1.png",width = 480, height = 480)
dev.off() ##close png device
