tomatoData<- read.table(file="T:/Rtutes/docs/Tomato First.csv",header=T,sep=",")
head(tomatoData)
tomatoCsv<-read.csv(file="T:/Rtutes/docs/Tomato First.csv",header=T,sep=",",stringsAsFactors=F)
tomatoCsv
tomatoData
install.packages("RMySQL", type="source" )
setRepositories()
1
MYSQL_HOME
require(ggplot2)
data()
install.packages("ggplot2")
require("XML")
theURL<- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlGame<- readHTMLTable(theURL, which = 1,header = F, stringsAsFactors=F)
bowlGame
readH
require("RMySQL")
myDb=dbConnect(MySQL(), user='root', password='root', dbname='collegetest', host='localhost')

dbListFields(myDb, "new table")
dbDisconnect(myDb)
