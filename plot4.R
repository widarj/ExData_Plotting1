initial <- read.table("C:/Users/t823822/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", nrows=100, stringsAsFactors = FALSE, sep = ";", header = T, na.strings="?")
colNames <- names(initial)
myPowerConsumption <- read.table("C:/Users/t823822/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", stringsAsFactors = FALSE, sep = ";", col.names = colNames,
                                 skip = 66637, nrows = 2880, na.strings="?")

dev.set(3)

png("plot4.PNG", width = 480, height = 480)

datetime <- paste(myPowerConsumption$Date, myPowerConsumption$Time)

datetime <- strptime(datetime,"%e/%m/%Y %H:%M:%S")

par(mfrow=c(2,2))

# 1st plot
plot(datetime, myPowerConsumption$Global_active_power, type="l", ylab="Global Active Power", xlab="")

# 2nd plot
plot(datetime, myPowerConsumption$Voltage, type="l", ylab="Voltage")

# 3rd plot
plot(datetime, myPowerConsumption$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col="grey")
lines(datetime, myPowerConsumption$Sub_metering_2, col="red")
lines(datetime, myPowerConsumption$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub metering_1", "Sub metering_2", "Sub metering_3"),
       col=c("grey", "red","blue"), lty=1:1)

#4th plot
plot(datetime, myPowerConsumption$Global_reactive_power, type="l", ylab="Global_reactive_power")

dev.off()



     
     