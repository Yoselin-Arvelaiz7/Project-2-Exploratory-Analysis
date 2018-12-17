NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#plot 2

d<-NEI[which(NEI$fips=="24510"),c(4,6)]
f<-tapply(d$Emissions,d$year,sum)
barplot(f,col="darkblue",xlab = "Year",ylab = "Emissions Baltimore City",main = "Emission Vs. Year")
