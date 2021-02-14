install.packages("pacman")
library(pacman)
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny,
               stringr, tidyr, psych)
library(readr)
child <- read_csv("D:/Conrad/Downloads/child.csv")

child <- mutate(child, ageGroup = ifelse(age<= 5, "Five and under", "6 and over"))
child$autismFH <- as.factor(child$autismFH)

sixandabove <- filter(child, age>= 6)
fiveandbelow <- filter(child, age<= 5)

 

compare <- ggplot(fiveandbelow,  aes(x = score, y = cost))+
  theme_bw()+
  geom_point(aes(colour = autismFH)) +
 scale_x_continuous(name="Score", breaks=seq(0.0, 15, by = 0.3)) + scale_y_continuous(name="Cost", breaks=seq(0, 4000, by = 500), limits=c(0, 4000)) +
  labs(title = "Score vs Cost plot for Five and below")
print(compare)


compare <- ggplot(sixandabove,  aes(x = score, y = cost))+
  theme_bw()+
  geom_point(aes(colour = autismFH)) +
  scale_x_continuous(name="Score", breaks=seq(0.0, 16, by = 0.2)) + scale_y_continuous(name="Cost", breaks=seq(2500, 3500, by = 100), limits=c(2500, 3500)) +
  labs(title = "Score vs Cost plot for Six and above")
print(compare)
