install.packages("pacman")
library(pacman)
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny,
               stringr, tidyr, psych)
library(readr)
child <- read_csv("D:/Conrad/Downloads/child.csv")

library(tidyr)
describe(child$score)
describe(child$score2) 
describe(child$age)
describe(child$cost)

# Question 2.
ggplot(data=child, aes(x = score)) + 
  geom_density(col="red", 
               fill="green",
               alpha=.9)+
  labs(title="Density Plot for Score", x="Score", y="Frequency")

ggplot(data=child, aes(x = score)) + 
  geom_bar( col="red", 
            fill="green",
            alpha=.2) + 
  scale_x_continuous(name="Score", breaks=seq(0.0, 15, by = 0.5)) + scale_y_continuous(name="Frequency", breaks=seq(0, 15, by = 1), limits=c(0, 15)) +
  labs(title="Bar Plot for Score", x="Score", y="Frequency")

###########################################################################

ggplot(data=child, aes(x = score2)) + 
  geom_density(col="red", 
               fill="green",
               alpha=.9)+
  labs(title="Density Plot for Score2", x="Score2", y="Frequency")

ggplot(data=child, aes(x = score2)) + 
  geom_bar( col="red", 
            fill="green",
            alpha=.2) + 
  scale_x_continuous(name="Score2", breaks=seq(0.0, 15, by = 0.5)) + 
  scale_y_continuous(name="Frequency", breaks=seq(0, 15, by = 1), limits=c(0, 15)) +
  labs(title="Bar Plot for Score2")

  
###############################################################################################

ggplot(data=child, aes(x = age)) + 
  geom_density(col="red", 
               fill="green",
               alpha=.9)+
  scale_x_continuous(name="Age", breaks=seq(1, 10, by = 1))+
  labs(title="Density Plot for Age", x="Age", y="Frequency")

ggplot(data=child, aes(x = age)) + 
  geom_bar( col="red", 
            fill="green",
            alpha=.2) + 
  scale_x_continuous(name="Age", breaks=seq(1, 10, by = 1)) +
  scale_y_continuous(name="Frequency", breaks=seq(0, 100, by = 10)) +
  labs(title="Bar Plot for Age")

###############################################################################################

ggplot(data=child, aes(x = cost)) + 
  geom_density(col="red",
               fill="green",
               alpha=.9)+
  scale_x_continuous(name="Cost", breaks=seq(-500, 4500, by = 500), limits=c(-30, 3850))+
  labs(title="Density Plot for Cost", x="Cost", y="Frequency")

#ggplot(data=child, aes(x = cost)) + 
#  geom_bar( col="red", 
#            fill="green",
#            alpha=.2) + 
#  scale_x_continuous(name="Cost", breaks=seq(-50, 4500, by = 100), limits=c(-30, 3850))+
  #scale_y_continuous(name="Frequency", breaks=seq(0, 100, by = 10)) +
#  labs(title="Bar Plot for Cost")


