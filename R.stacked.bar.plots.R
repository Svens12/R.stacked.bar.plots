library(dplyr)
mydata<-read.csv('murders.csv')
mydata
myseldata<-mutate(mydata,popu=population/1000)
names(myseldata)
myseldata<-myseldata[c(1,3,4)]
barplot(myseldata$popu)
mymatrix<-data.matrix(myseldata)
mymatrix
mymatrixtrans<-t(mymatrix)
mymatrixtrans
barplot(mymatrixtrans,
        xlab="States",
        main='Population Vs Murders',
        col=c('blue','red'),
        names.arg=myseldata$state)
legend('topleft',c('Population','Murders'),
       fill=c('blue','red'))
