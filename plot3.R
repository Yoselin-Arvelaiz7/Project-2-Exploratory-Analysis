library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Plot 3

d<-NEI[which(NEI$fips=="24510"),4:6]
s<-aggregate(Emissions~year +type,d,sum)
ggplot(s,aes(x=year,y=Emissions,colour=type))+geom_line()+xlab("Type")+ylab("Emissions")+ggtitle("Type Emissions Baltimore City")
