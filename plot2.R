#, colClasses = c("Date","Time","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
ds <- read.table("C:\\Coursera\\household_power_consumption.txt", sep = ";", header = TRUE)
ds1 <- subset( ds, as.Date(ds$Date, "%d/%m/%Y") >= as.Date("2007-02-01") )
ds2 <- subset( ds1, as.Date(ds1$Date, "%d/%m/%Y") <= as.Date("2007-02-02") )
#head(as.POSIXct(paste(ds2$Date,ds2$Time), format = "%d/%m/%Y %H:%M:%S"))
#head(as.numeric(ds2$Global_active_power)/1000)

plot(
  as.POSIXct(paste(ds2$Date,ds2$Time), format = "%d/%m/%Y %H:%M:%S")
     ,as.numeric(ds2$Global_active_power)/1000
     ,col="black"
     ,ylab="Global Active Power (killowatts)"
     ,xlim=c(as.Date("2007-01-01"), as.Date("2007-02-03"))
     #,ylim=c(0, 6)  ## with c()
     #, type="l"
)
dev.copy(png, file = "C:\\Coursera\\plot2.png",width = 480, height = 480)
dev.off() ##close png device

