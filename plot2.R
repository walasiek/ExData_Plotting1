# ---------------------------
# Plot 2
# Author: Marcin Walas
# ---------------------------

source('readData.R')

plot(
    data$DatePOSIXCol,
    data$Global_active_power,
    ylab = "Global Active Power (kilowatts)",
    xlab = "",
    type='l')

dev.copy(png, file='plot2.png')
dev.off()
