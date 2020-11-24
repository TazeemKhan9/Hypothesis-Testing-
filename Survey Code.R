s<-read.csv("C:/Users/Tazeem/Documents/Notes/SEM 3/MU/MATHS CAPACITY BETWEEN MALES AND FEMALES.csv")
na.omit(s)
op<-par(mfrow=c(1,1))
boxplot(s$Mathematical.Score..MALE.,col="Blue",main="Mathematical scores of Males")
summary(s$Mathematical.Score..MALE.)

boxplot(s$Mathematical.Score..FEMALE.,col="Pink",main="Mathematical scores of Females")


hist(s$Mathematical.Score..MALE.,col="dark blue",main="Mathematical scores of Males",lab=2,xlab="Stage level",ylab="No of males completing till stage",ylim=c(0,10),xlim=c(0,25),breaks=8,border="BLACK")
mx<-mean(s$Mathematical.Score..MALE.)
abline(v = mx, col = "yellow", lwd = 2)

hist(s$Mathematical.Score..FEMALE.,col="yellow",main="Mathematical scores of Females",lab=2,xlab="Stage level",ylab="No of females completing till stage",ylim=c(0,12),xlim=c(0,25),breaks=8)
na.omit(s$Mathematical.Score..FEMALE.)
ms<-mean(na.omit(s$Mathematical.Score..FEMALE.))
abline(v = ms, col = "red", lwd = 2)
summary(na.omit(s$Mathematical.Score..FEMALE.))

