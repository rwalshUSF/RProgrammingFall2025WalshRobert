#Module #9 post for my LIS4370 blog. Welcome!

library(ggplot2)
library(lattice)

data("diamonds")
myDF<-diamonds

#Task 1 -  Base R Graphics
#Create at least two plots using base R functions:

#Base R plot() function
plot(myDF$carat,myDF$price,
     main="Base R - 'Diamonds' data set plot: Price vs. Carat",
     xlab="Carat",
     ylab="Price")

#Base R hist() function
hist(myDF$price,
     main="Base R - 'Diamonds' data set histogram: Price",
     xlab="Price",
     ylab="Freq")

#Task 2 -  Lattice Graphics
#Use the lattice package to produce conditioned or multivariate plots:

# Conditional scatter plot (small multiples)
xyplot(price ~ carat | factor(clarity),
       data = myDF,
       main = "Lattice: - 'Diamonds' data set Conditional scatter plot: Price vs. Carat by Clarity")

# Box-and-whisker plot
bwplot(carat ~ factor(cut),
       data = myDF,
       main = "Lattice: - 'Diamonds' data set Box-and-whisker plot: Carat vs. Cut")

#Task 3 -  ggplot2
#Use ggplot2’s grammar of graphics to create layered visuals:

# Scatter plot with smoothing
ggplot(myDF,aes(x=carat,y=price,color=factor(color))) +
  geom_point() +
  geom_smooth(method = "lm") +
  ylim(c(0,20000)) +
  xlim(c(0,5))
  labs(title = "ggplot2: Price vs. Carat with trend by Color group")

# Faceted histogram
ggplot(myDF,aes(carat)) +
  geom_histogram(binwidth = 0.25,color="white") +
  facet_wrap(~ cut,scales="free") +
  labs(title = "ggplot2: Carat distribution by Cut category")
