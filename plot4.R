# load in data
source('loadData.R')
loadData()

# Make plot
png(filename = "plot4.png")
par(mfrow = c(2,2))
with(data, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power"))
with(data, plot(datetime, Voltage, type = "l"))
with(data, plot(datetime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab =))
with(data, lines(datetime, Sub_metering_2, col = "red"))
with(data, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")
with(data, plot(datetime, Global_reactive_power, type = "l"))
dev.off()