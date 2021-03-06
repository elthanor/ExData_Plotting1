dt<-read.table("household_power_consumption.txt",stringsAsFactors = F,sep = ";",header=T)
dt<-subset(dt,dt$Date=="1/2/2007" | dt$Date=="2/2/2007")
hist(as.numeric(dt$Global_active_power),col="red",xlab = "Global Active Power (killowatts)")
dev.copy(device=png,"plot1.png", height=480, width=480)
dev.off()