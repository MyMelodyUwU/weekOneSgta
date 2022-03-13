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
library("roxygen2")
library("testthat")

dat = read.table("pulse.dat", header=TRUE)
# Something that reads the data, a header is a logical variable which shows
# Which working directory its in.

attach(dat)
# We are making the data set saved, and easy to find.

stem(dat$pulse)
# Creates a stem and leaf plot, from the sub category pulse, pulse has been "Head"
# From the data, which means we take a single column from the data set.

hist(dat$pulse, main = "Student Pulse rates (bpm)")

# Creates a histogram of the data, which in this case is Pulse

boxplot(dat$pulse, horizontal = TRUE,
        main = "Student Pulse rates (bpm)")

# Same shit, but a box plot.

summary(dat$pulse)

# Gives General Information of the data set, which we can see from the results the
# Min, 1st Quartile, Median, Mean, 3rd Quartile and Max is showing

sd(dat$pulse)
# Standard deviation.

mean(dat$pulse)
#Mean

dat1 = read.table("encoder.txt", header = TRUE)
str(dat1) # Look at the data object
dat1 # Look at all observations
head(dat1) # display first six observations
summary(dat1$time) # obtain descriptive statistics
sd(dat1$time)^2 #Find the SD.
pValue <- t.test(dat1$time, mu = 19.25)$p.value
#
#if(pValue < 0.05) {
#  print("Reject")
#} else {
#  print("Do Not Reject")
#}
ifelse(pValue<0.05, print("Reject"), print("Don't reject"))
t.test(dat1$time, mu = 19.25, alternative = "less")

t.test(dat1$time, mu = 19.25, alternative = "greater")

# Okay, we didn't know why the fuck mu is 19.25, mu is the mean of the POPULATION
# When we find the descriptive statistics of the data, we realize the mean is
# 18.22, lol what the fuck right? No, this is coz this is this the
# mean of the SAMPLE

# When we are constructing our hypothesis, we will need to create a Null Hypothesis
# and a Alternative Hypothsis.

# In this case, the sample mean is NOT 19.25, but 18.22 from our t test. Therefore,
# We reject the null hypothesis AND the sample mean was significantly less than the
# population
