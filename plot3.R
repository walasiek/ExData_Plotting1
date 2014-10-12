# ---------------------------
# Plot 2
# Author: Marcin Walas
# ---------------------------

source('readData.R')

plotType = 's'

plot(
    data$DatePOSIXCol,
    data$Sub_metering_1,
    type=plotType)

legend(
    "topright", pch=1,
    col = c("red","blue"),
    legend = c('Sub_metering_1',
        'Sub_metering_2',
        'Sub_metering_3')
    )

dev.copy(png, file='plot3.png')
dev.off()
