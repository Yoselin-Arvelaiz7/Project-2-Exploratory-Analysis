NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Plot 1

f<-tapply(NEI$Emissions,NEI$year,sum)
barplot(f,col="darkblue",xlab = "Year",ylab = "Emissions",main = "Emission Vs. Year")
plot(NEI$year,NEI$Emissions,col="darkblue",main = "Emission PM2.5 Vs. Year",xlab = "Year",ylab = "Emissions",type="h",lwd=15)
