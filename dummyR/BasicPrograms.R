helloWorld<- function (bla)
{
  print(sprintf("helloWorld %s", bla))
}
defaultArgu<-function(first,middle="YOYO",last)
{
  print(sprintf("hello %s %s %s", first,middle,last ))
}
helloWorld<- function (bla,...)
{
  print(sprintf("helloWorld %s", bla))
}
helloWorld("ashish","blabla")
defaultArgu(first="Ashish" , last="Pandey")
