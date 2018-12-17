NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#plot4

x<-grepl("coal",SCC$Short.Name,ignore.case = T)
d1<-SCC[x,]

join<-merge(NEI,d1,by="SCC")
f<-tapply(join$Emissions,join$year,sum)
barplot(f,col="darkblue",xlab = "Year",ylab = "Emissions from coal USA",main = "Emission Vs. Year")
