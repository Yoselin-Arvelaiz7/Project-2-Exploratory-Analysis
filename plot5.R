NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#plot5
x1<-grepl("vehicle",SCC$SCC.Level.Two,ignore.case = T)
d2<-SCC[x1,]

v<-NEI[which(NEI$fips=="24510"),]
join1<-merge(v,d2,by="SCC")
f1<-tapply(join1$Emissions,join1$year,sum)
barplot(f1,col="darkblue",xlab = "Year",ylab = "Emissions from vehicle motor Baltimore",main = "Emission Vs. Year")
