loadData <- function() {
    file <- "household_power_consumption.txt"
    header <- read.table(file, nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
    data <- read.table(file, header = TRUE, sep = ";", skip=grep("1/2/2007", readLines(file)), nrows = 2878, col.names = unlist(header))
    
    # convert Date column to Date/Time classes
    data$Date <- as.character(data$Date)
    data$Time <- as.character(data$Time)
    
    # create new Date/Time column
    datetime <- with(data, paste(Date, Time), sep = " ")
    data$datetime <- datetime
    data$datetime <- with(data, strptime(datetime, format = "%d/%m/%Y %H:%M:%S"))
}