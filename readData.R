
# Reading data

# Reading data
temp <- tempfile()
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, temp,method="curl")

data <- read.csv(
    unz(temp, "household_power_consumption.txt"),
    nrows=2880,
    skip=66637,
    header=FALSE,
    sep=';',
    dec='.',
    na.strings='?'
)

unlink(temp)

names(data) <- c('Date', 'Time', 'Global_active_power', 'Global_reactive_power', 'Voltage', 'Global_intensity', 'Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')

DatePOSIXCol1 <- paste(data$Date, data$Time, sep=" ")
DatePOSIXCol2 <- lapply(DatePOSIXCol1, function(x) {as.POSIXct(strptime(x, "%d/%m/%Y %H:%M:%S"))})
data[['DatePOSIXCol']] <- DatePOSIXCol2

