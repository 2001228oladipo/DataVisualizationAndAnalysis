install.packages("pacman")
library(pacman)
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny,
               stringr, tidyr, psych)
library(readr)
child <- read_csv("D:/Conrad/Downloads/child.csv")

# since column autism only two posible values, it is converted into a factor value
child$autism <- as.factor(child$autism)

# the data frame is divided into tow different data frame
# one for children with autism and the oter for children without autism
# while it posible to calculate the mean without seprating the data frame
# this method makes it clear and easy to understand
noautism <- filter(child, autism == "NO")
yesautism <- filter(child, autism == "YES")

# the mean is calculated
meanayes = mean(noautism$score)
meanano = mean(yesautism$score)

print(meanayes)
print(meanano)

# Question 3.1 yes#######################################################################################

# the data frame is divided into two different data frame
# one for children with a family history of autism and 
# the other for children without a family history of autism
# while it posible to calculate the mean without seprating the data frame
# this method makes it clear and easy to understand
noautismFH <- filter(child, autismFH == "no")

yesautismFH <- filter(child, autismFH == "yes")

#View(noautismFH)
#View(yesautismFH)

meanayesFH = mean(yesautismFH$score)
meananoFH = mean(noautismFH$score)

print(meanayesFH)
print(meananoFH)
# Question 3.2 No  #######################################################################################


linearModel<-lm(score2 ~ score, data = child)

predict(linearModel, data.frame(score = c(7, 12)))

#Question 3.3     7.060663 
#Question 3.4     11.139470


#pred->predict()
#print(pred)
