# load in data
source('loadData.R')
loadData()

# Make plot
png(filename = "plot1.png", bg = "transparent")
with(data, hist(Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power"))
dev.off()