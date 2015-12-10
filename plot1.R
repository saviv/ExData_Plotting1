read.table ("household_power_consumption.txt", sep=";", nrows=3); ## első 3 sort jelenítse meg
header = read.table ("household_power_consumption.txt", sep=";", nrows=1);##fejléc
data = read.table ("household_power_consumption.txt", sep=";", nrows=2880, skip=66637) ##)skip=kihagy
hist(data[,3], col="red",xlab="Global Active Power [kilowatts]", main="Global Active Power") 
