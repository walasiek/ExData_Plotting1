# ---------------------------
# Plot 3
# Author: Marcin Walas
# ---------------------------

source('readData.R')
par(mfrow = c(2,2))

# -------- plot left-top
plot(
    data$DatePOSIXCol,
    data$Global_active_power,
    ylab = "Global Active Power (kilowatts)",
    xlab = "",
    type='l')

# --------- plot right-top
plot(
    data$DatePOSIXCol,
    data$Voltage,
    ylab = "Voltage",
    xlab = "datetime",
    type='l')

# ---------- plot left-bottom
plotType = 'l'

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

# ------------ plot right-bottom
plot(
    data$DatePOSIXCol,
    data$Global_reactive_power,
    ylab = "Global_reactive_power",
    xlab = "datetime",
    type='l')


dev.copy(png, file='plot3.png')
dev.off()
