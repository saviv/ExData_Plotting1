read.table ("household_power_consumption.txt", sep=";", nrows=3); ## első 3 sort jelenítse meg
header = read.table ("household_power_consumption.txt", sep=";", nrows=1);##fejléc
data = read.table ("household_power_consumption.txt", sep=";", nrows=2880, skip=66637); ##)skip=kihagy
data[,1]=as.Date(data[,1], format="%d/%m/%Y");
time=as.POSIXct(paste(as.character(data[,1]),as.character(data[,2])));

plot(time, data[,3], type="l", ylab="Global Active Power [kilowatts]", xlab="") ##x és y tg
