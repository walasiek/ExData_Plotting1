# ---------------------------
# Plot 1
# Author: Marcin Walas
# ---------------------------

source('readData.R')

hist(data$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     main="Global Active Power",
     col="red")

dev.copy(png, file='plot1.png')
dev.off()
