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

install.packages("ggplot2")
library("ggplot2")
mycol <- rgb(1, 0, 0, alpha = 0.25)

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
    col = "#371462", alpha = 0.5,
    add = TRUE
)
hist(iris$Petal.Length[iris$Species == "virginica"],
    xlim = c(0, 8),
    breaks = 9,
    main = "Petal Length for Virginicas",
    xlab = "",
    col = mycol,
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
    main = paste(
        "Histogram of Annual",
        "Canadian Lynx trappings 1821–1934"
    ),
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

?sleep
head(sleep)

?PlantGrowth
head(PlantGrowth)
plot(PlantGrowth)

?LakeHuron
head(LakeHuron)
plot(LakeHuron)

hist(LakeHuron, freq = FALSE)
curve(dnorm(x, mean = mean(LakeHuron), sd = sd(LakeHuron)),
    col = "#371462",
    lwd = 2,
    add = TRUE
)

plot(LakeHuron)
lines((LakeHuron),
    col = "dark blue",
    lwd = 2
)
summary(rivers)
summary(LakeHuron)
summary(trees)
summary(trees$Height)
summary(iris)
summary(iris$Species)
summary(iris$Petal.Length)

install.packages("psych")
library(pacman)
p_help(psych, web = F)

describe(rivers)
describe(iris)
describe(iris$Sepal.Length)

head(iris)
hist(iris$Petal.Length)
summary(iris$Petal.Length)
summary(iris$Species)
hist(iris$Petal.Length[iris$Species == "versicolor"],
    main = "Petal Length = Versicolor"
)
hist(iris$Petal.Length[iris$Species == "virginica"],
    main = "Petal Length = Virginica"
)
hist(iris$Petal.Length[iris$Species == "setosa"],
    main = "Petal Length = Setosa"
)
hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5],
    main = "Petal Length = Shorter Viriginca"
)

i_setosa <- iris[iris$Species == "setosa", ] # setosa rows, blank for all columns
head(i_setosa)
summary(i_setosa)
hist(i_setosa$Petal.Length)

install.packages("tidyverse")
library(tidyverse)
library(lubridate)
today()
now()
ymd("2021-01-20")
mdy("January 20th, 2021")
dmy("20-Jan-2021")
ymd(20210120)
ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")
as_date(now())

first_variable <- "This is my variable. The arrow is the assignment operator"
print(first_variable)
second_variable <- 12.5
print(second_variable * 2)

x <- 10
x > 3 & x < 12
y <- 7
y < 8 | y > 16
x <- 2
y <- 2
y != x

x <- 7
if (x < 0) {
    print("x is a negative number")
} else if (x == 0) {
    print("x is zero")
} else {
    print("x is a positive number")
}

vector_1 <- c(1, 2, 3)
vector_1

head(diamonds)
summary(diamonds$cut)
data_frame(diamonds)
tibble(diamonds)

data.frame(x = c(1, 2, 3), y = c(1.5, 5.5, 7.5))
matrix(c(3:8), nrow = 2)
matrix(c(3:8), ncol = 2)

library("ggplot2")
facet_grid(diamonds)
facet_wrap(diamonds)

dir.create("R Experiments")
file.create("r_experiments.csv")
file.copy("r_experiments.csv", "R Experiments")
unlink (“some_.file.csv”)

library(tidyverse)
data(diamonds)
view(diamonds)
head(diamonds)
str(diamonds)
colnames(diamonds)
glimpse(diamonds)
mutate(diamonds, carat_2=carat*100)
colnames(diamonds)
as_tibble(diamonds)

names <- c("Peter", "Jennifer", "Julie", "Alex")
age <- c(15, 19, 21, 25)
people <- data.frame(names, age)
head(people)
str(people)
glimpse(people)
mutate(people, age_in_20 = age + 20)

fruit <- c("Lemon", "Blueberry", "Grapefruit", "Mango", "Strawberry")
rank <- c(4, 2, 5, 3, 1)
fruit_ranks <- data.frame(fruit, rank)
head(fruit_ranks)
str(fruit_ranks)

bookings_df <- read_csv("hotel_bookings.csv")
