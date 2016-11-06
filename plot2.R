# load in data
source('loadData.R')
loadData()

# Make plot
png(filename = "plot2.png")
with(data, plot(datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()