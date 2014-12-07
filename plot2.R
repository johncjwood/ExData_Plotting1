ds <- read.table("C:\\Coursera\\household_power_consumption.txt", sep = ";", header = TRUE, colClasses = c("Date","Time","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

hist(as.numeric(ds$Global_active_power)/1000,col="red",main="Global Active Power",breaks=12
     ,xlab="Global Active Power (killowatts)", ylab="Frequency"
     ,xlim=c(0, 6), ylim=c(0, 1600000)
     ,axes=FALSE)
axis(1,pos=c(0,0),at=seq(0,6,by=2))
axis(2)
dev.copy(png, file = "C:\\Coursera\\plot1.png",width = 480, height = 480)
dev.off() ##close png device