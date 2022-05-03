# Solution file for BIS 044 Assignment 03, Spring 2022

# Load the previously referenced data frame in "Yellow_Sample.RData"
library(tidyverse)
Yellow_Sample <- read_csv("Yellow_Sample.csv")

# Throwing out zero distance and trips > 10 miles
Yellow_Sample <- Yellow_Sample[which(
  Yellow_Sample$trip_distance>0 & 
    Yellow_Sample$trip_distance<=10),]

# Calculating means of trip_distance and total_amount
mean(Yellow_Sample$trip_distance)
mean(Yellow_Sample$total_amount)

# Or, if you want to format it as currency (not required):
sprintf("$%.2f", mean(Yellow_Sample$total_amount))

# Or...

library(formattable)
currency(mean(Yellow_Sample$total_amount), digits = 2L)
