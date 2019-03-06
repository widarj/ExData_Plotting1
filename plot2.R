initial <- read.table("C:/Users/t823822/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", nrows=100, stringsAsFactors = FALSE, sep = ";", header = T, na.strings="?")
colNames <- names(initial)
myPowerConsumption <- read.table("C:/Users/t823822/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", stringsAsFactors = FALSE, sep = ";", col.names = colNames,
                                 skip = 66637, nrows = 2880, na.strings="?")

dev.set(3)

png("plot2.PNG", width = 480, height = 480)

datetime <- paste(myPowerConsumption$Date, myPowerConsumption$Time)

datetime <- strptime(datetime,"%e/%m/%Y %H:%M:%S")

plot(datetime, myPowerConsumption$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="", main="Global Active Power (kilowatts)")

dev.off()



     
     