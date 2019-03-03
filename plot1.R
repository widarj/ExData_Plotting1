powerconsumption <- read.table("C:/Users/t823822/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", header=TRUE, sep=";", dec=".")

myPowerConsumption <- subset(powerconsumption, Date == "1/2/2007" | Date == "2/2/2007", select = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

myPowerConsumption$Global_active_power  <- as.numeric(myPowerConsumption$Global_active_power) 

dev.set(3)

png("plot1.PNG", width = 480, height = 480)

hist(myPowerConsumption$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power", breaks = 10, xlim=c(0,6000), labels=c("0", "1", "2","3", "4", "5", "6"))

dev.off()



     
     