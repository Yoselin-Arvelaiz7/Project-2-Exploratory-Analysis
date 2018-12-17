NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#plot5
x1<-grepl("vehicle",SCC$SCC.Level.Two,ignore.case = T)
d2<-SCC[x1,]

v<-NEI[which(NEI$fips=="24510"),] #Baltimore
v1<-NEI[which(NEI$fips=="06037"),] #LA

join1<-merge(v,d2,by="SCC") #Baltimore
join1$city<-"Baltimore"

join2<-merge(v1,d2,by="SCC") #LA
join2$city<-"LA"

datos<-rbind(join1,join2)

datos<-aggregate(Emissions~year +city,datos,sum)
ggplot(datos,aes(x=year,y=Emissions,colour=city))+geom_line()+xlab("Type")+ylab("Emissions")+ggtitle("city Emissions")
