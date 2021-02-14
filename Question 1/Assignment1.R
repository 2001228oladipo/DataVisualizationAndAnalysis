library(pacman)
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny,
               stringr, tidyr, psych, readr)
child <- read_csv("D:/Conrad/Downloads/child.csv")

query1 = filter(child, residence == "Australia" | residence == "Germany"| residence == "Italy" | residence == "India")
plot1 <- ggplot(query1, aes(x=query1$residence)) + geom_bar() + labs(title="Frequency bar chart", x="Residence", y="Frequency")  # Y axis derived from counts of X item
print(plot1)
#barplot(table(query1$residence))