household_power_consumption <- read.csv("C:/Users/Kajal/Desktop/household_power_consumption.txt", header=FALSE, sep=";", stringsAsFactors=TRUE)
View(household_power_consumption)
attach(household_power_consumption)
names(household_power_consumption) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(household_power_consumption,household_power_consumption$Date=="1/2/2007" |household_power_consumption$Date =="2/2/2007")
subpower$Date <- as.Date(subpower$Date, format="%d/%m/%Y")
subpower$Time <- strptime(subpower$Time, format="%H:%M:%S")
subpower[1:1440,"Time"] <- format(subpower[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subpower[1441:2880,"Time"] <- format(subpower[1441:2880,"Time"],"2007-02-02 %H:%M:%S")


# calling the basic plot function
plot(subpower$Time,as.numeric(as.character(subpower$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)") 

# annotating graph
title(main="Global Active Power Vs Time")
