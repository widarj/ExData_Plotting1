initial <- read.table("C:/Users/t823822/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", nrows=100, stringsAsFactors = FALSE, sep = ";", header = T, na.strings="?")
colNames <- names(initial)
myPowerConsumption <- read.table("C:/Users/t823822/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", stringsAsFactors = FALSE, sep = ";", col.names = colNames,
                 skip = 66637, nrows = 2880, na.strings="?")

dev.set(3)
png("plot1.PNG", width = 480, height = 480)
hist(myPowerConsumption$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
