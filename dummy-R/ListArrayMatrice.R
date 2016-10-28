list1<- list(c(1:5),5,6,theDF)
list1
list2<-list(c(9,8,7));
names(list1)<- c("one","two","three","four")
names(list1)
emptyList<- vector(mode="list")
emptyList[[1]]<-1
emptyList
list1[[4]]
list1[[4]][4,"Third"]

Sys.Date()

B<-matrix(data=1:10, nrow=2, ncol=5,byrow=T, dimnames=NULL)
matrix(data=NA, nrow=2, ncol=5,byrow=T, dimnames=NULL)
matrix(data=d, nrow=2, ncol=5,byrow=T, dimnames=NULL)
matrix(data=theDF[,3])
A<-matrix(data=1:10, nrow=5, ncol=2,byrow=T, dimnames=NULL)
t(A)
ncol(B)
ncol(A)
B %*% A
ncol(A)
colnames(A)<-c("One","Two")
nrow(A)
rownames(A)<-LETTERS[1:5]
A




arrays<- array(data=1:10, dim=c(1,15) )
arrays
