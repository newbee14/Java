require("ggplot2")
data(diamonds)
head(diamonds)
hist(diamonds$carat)
hist(diamonds$depth)
hist(diamonds$carat, main="Diamond Histogram", xlab = "carat")
iris
plot(x =diamonds$carat, y = diamonds$price )
