household <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", 
            na.strings = "?", colClasses=c("character", "character", rep("numeric",7)))
household$Date <- as.Date(household$Date, "%d/%m/%Y")
householdfeb <- subset(household, household$Date == "2007-02-01" | household$Date == "2007-02-02")
par(mar = c(10, 4, 4, 4))
hist(householdfeb$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png, file="plot1.png")
dev.off()