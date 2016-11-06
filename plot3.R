# load in data
source('loadData.R')
loadData()

# Make plot
png(filename = "plot3.png", bg = "transparent")
with(data, plot(datetime, Sub_metering_1, type = "l", ylab = "Energy sub metering"))
with(data, lines(datetime, Sub_metering_2, col = "red"))
with(data, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()