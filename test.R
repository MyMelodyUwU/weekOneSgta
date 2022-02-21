library("tidyverse")
library("devtools")
library("glue")
library("dplyr")
library("stringr")
library("ggplot2")
library("knitr")
library("ggrepel")
library("patchwork")
library("janitor")
library("usethis")


dat = read.table("pulse.dat", header=TRUE)

attach(dat)

stem(dat$pulse)

hist(dat$pulse, main = "Student Pulse rates (bpm)")

boxplot(dat$pulse, horizontal = TRUE,
        main = "Student Pulse rates (bpm)")

summary(dat$pulse)

sd(dat$pulse)

mean(dat$pulse)

dat1 = read.table("encoder.txt", header = TRUE)
str(dat1) # Look at the data object
dat1 # Look at all observations
head(dat1) # display first six observations
summary(dat1$time) # obtain descriptive statistics
t.test(dat1$time, mu = 19.25) # Conduct the test

dat1 = read.table("encoder.txt", header = TRUE)
str(dat1) # Look at the object

summary(dat1$time) # obtain descriptive statistics

t.test(dat1$time, mu = 19.25) # Conduct the test

t.test(dat1$time, mu = 19.25, alternative = "less")

t.test(dat1$time, mu = 19.25, alternative = "greater")

