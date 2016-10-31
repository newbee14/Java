x<- 10:1
y<--4:5
q<-c("hockey","football","baseball","basketball","rugby","skating","tennis","badminton",
     "kabaddi","boxing")
theDF<- data.frame(x,y,q)
class(theDF)
theDF
as.data.frame(theDF)
row.names<-("one","two")
theDF<- data.frame("First"=x, "Second"=y,"Third"=q)
theDF
class(theDF$x)
nrow(theDF)

