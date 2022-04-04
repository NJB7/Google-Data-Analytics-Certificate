# Google coursera class
# q() to quit R
# ctrl + k to clear terminal (in any language, I think) # nolint
install.packages("pacman")
print("Hello world!")
4 * 5
require(pacman) # confirmation message
library(pacman) # no message
detach("package:library") # disconnect from library
p_unload(all) # clears all add-ons OR:
detach("package:datasets", unload = TRUE)

library(datasets)
head(iris)
plot(iris$Species)
plot(iris$Petal.Length)
plot(iris$Species, iris$Petal.Width)
plot(iris$Petal.Length, iris$Petal.Width,
    col = "#371462",
    pch = 19,
    main = "Iris: Petal Length vs Petal Width",
    xlab = "Petal Length",
    ylab = "Petal Width"
)
plot(iris)

plot(cos, 0, 2 * pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3,
    col = "#371462",
    lwd = 3,
    main = "Standard Normal Distribution",
    xlab = "z-scores",
    ylab = "Density"
)

library(datasets)
?trees
head(trees)
plot(trees)
barplot(trees$Height, trees$Girth)
height <- table(trees$Height)
plot(height)
barplot(height)
hist(trees$Height)

library(iris)
?iris
head(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

head(iris$Species)
par(mfrow = c(3, 1))
hist(iris$Petal.Length[iris$Species == "setosa"],
    xlim = c(0, 8),
    breaks = 9,
    main = "Petal Length for Setosas",
    xlab = "",
    col = "dark blue"
)
hist(iris$Petal.Length[iris$Species == "versicolor"],
    xlim = c(0, 8),
    breaks = 9,
    main = "Petal Length for Versicolors",
    xlab = "",
    col = "#371462",
    add = TRUE
)
hist(iris$Petal.Length[iris$Species == "virginica"],
    xlim = c(0, 8),
    breaks = 9,
    main = "Petal Length for Virginicas",
    xlab = "",
    col = "darkred",
    add = TRUE
)

?trees
hist(trees$Height)
hist(trees$Girth)
plot(trees$Height, trees$Girth,
    pch = 19,
    cex = 1.5,
    col = "#371462",
    main = "Relationship between Black Cherry Tree Height & Girth",
    xlab = "Height (in feet)",
    ylab = "Weight (in inches)"
)

?lynx
head(lynx)
plot(lynx)
hist(lynx)
hist(lynx,
    breaks = 19,
    freq = FALSE,
    col = "thistle1",
    main = paste("Histogram of Annual", 
        "Canadian Lynx trappings 1821–1934"),
    xlab = "Number of Lynx Trapped"
)
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
    col = "thistle4",
    lwd = 2,
    add = TRUE
    )

?rivers
head(rivers)
plot(rivers)
hist(rivers)
hist(rivers,
    breaks = 19,
    freq = FALSE,
    col = "thistle1",
    main = paste("Histogram of Lengths of Major North American Rivers"),
    xlab = "Number of Rivers of a Certain Length (in miles)"
)
curve(dnorm(x, mean = mean(rivers), sd = sd(rivers)),
    col = "thistle4",
    lwd = 2,
    add = TRUE
)
lines(density(rivers), 
    col = "dark blue", 
    lwd = 2
)
lines(density(rivers, adjust = 3), 
    col = "dark red", 
    lwd = 2
)
rug(rivers, lwd = 2, col = "slate gray")
