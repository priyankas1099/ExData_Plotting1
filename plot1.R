household_power_consumption <- read.csv("C:/Users/Kajal/Desktop/household_power_consumption.txt", header=FALSE, sep=";", stringsAsFactors=TRUE)
View(household_power_consumption)
attach(household_power_consumption)
names(household_power_consumption) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(household_power_consumption,household_power_consumption$Date=="1/2/2007" |household_power_consumption$Date =="2/2/2007")
#str(subSetData)
globalActivePower <- as.numeric(subpower$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")


