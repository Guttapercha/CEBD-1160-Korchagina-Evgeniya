install.packages("questionr")
library(questionr)
data(hdv2003) 

# assign dataset to a variable d
d <- hdv2003 

#2-1 - Explore the variable hours to view the number of hours 
#spent watching television
p <- ggplot(d, aes(heures.tv))
p + geom_histogram()+ labs(x = "Hours", y = "Numbers", 
                       title = "Number of hours spent watching TV")
  scale_x_continuous(breaks = seq(0, 12, by = 4)) +
  scale_y_continuous(breaks = seq(0, 500, by = 100))
  
#2-2 Modify the graphic to customize the details as follow 
p <- ggplot(d, aes(heures.tv))
p + geom_histogram(bins = 7, fill="orange", color="black", size=1) + labs(x = "Hours", y = "Numbers", 
                                         title = "Number of hours spent watching TV")+
  scale_x_continuous(breaks = seq(0, 12, by = 4)) +
    scale_y_continuous(breaks = seq(0, 500, by = 100))

#2-3 View the density curve for "hours" variable   
p <- ggplot(d, aes(heures.tv))
p +geom_density(color="black", size=1) + labs(x = "Hours", y = "Density", 
                                                                           title = "Number of hours spent watching TV")+
  scale_x_continuous(breaks = seq(0, 12.5, by = 2.5)) +
  scale_y_continuous(breaks = seq(0, 0.3, by = 0.1))

#2-4- View the boxplot of the following variables: "hard.rock" and  "age"
p <- ggplot(d, aes(x=hard.rock, y=age, fill=hard.rock)) + 
  geom_boxplot(size=0.5)+
  labs(x = "Listening to hard rock", y = "Age", title="ge distribution according 
       to wheather you listen to hard rock or")
p

#2-5 Using a bar char view the variable "freres.soeurs"
ggplot(d, aes(freres.soeurs)) + geom_bar()+
 labs(x = "Number of brothers and sisters", y = "Numbers")
