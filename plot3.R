# ---------------------------
# Plot 3
# Author: Marcin Walas
# ---------------------------

source('readDataDebug.R')

plotType = 's'

plot(
    data$DatePOSIXCol,
    data$Sub_metering_1,
    xlab = "",
    ylab = "Energy sub metering",
    ylim=range(data$Sub_metering_1),
    type=plotType)

par(new=TRUE)

plot(
    data$DatePOSIXCol,
    data$Sub_metering_2,
    xlab="",
    ylab="",
    xlim=range(data$DatePOSIXCol),
    ylim=range(data$Sub_metering_1),
    col="red",
    type=plotType)

par(new=TRUE)

plot(
    data$DatePOSIXCol,
    data$Sub_metering_3,
    xlab="",
    ylab="",
    xlim=range(data$DatePOSIXCol),
    ylim=range(data$Sub_metering_1),
    col="blue",
    type=plotType)


legend(
    "topright", pch=NA,
    col = c("black","red","blue"),
    legend = c('Sub_metering_1',
        'Sub_metering_2',
        'Sub_metering_3'),
    lwd = 2, cex = 1.2,
    lty = c(1, 1, 1)
    )

dev.copy(png, file='plot3.png')
dev.off()
