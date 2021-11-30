#Assignment using equal operator.
var.1 = c(0,1,2,3)

#Assignment using leftward operator.
var.2 <- c("learn","R")

#Assignment using rightward operator.
c(TRUE,1) -> var.3

print(var.1)
cat("var.1 is ", var.1,"\n")
cat("var.2 is ", var.2,"\n")
cat("var.3 is ", var.3,"\n")


var_x <- "Hello"
cat("The class of var_x is ",class(var_x),"\n")

var_x <- 34.5
cat("Now the class of var_x is ",class(var_x),"\n")

var_x <- 27L
cat("Next the class of var_x becomes ",class(var_x),"\n")

print(ls())



library(tidyverse)
passengers <-read.csv("C:/Users/megha/OneDrive/Desktop/New folder/train.csv")
passengers
summary(passengers)
passengers %>%
  summary()
passengers %>%
  drop_na() %>%
  summary()
passengers %>%
  filter(Gender == "male")
passengers %>%
  filter(Gender == "female")
passengers %>%
  arrange(Fare)
passengers %>%
  arrange(desc(Fare))
passengers %>%
  mutate(FamSize = Parch + SibSp)
passengers %>%
  mutate(FamSize = Parch + SibSp) %>%
  arrange(desc(FamSize))
passengers1 <- passengers %>%
  mutate(Survived = ifelse(Survived == 0, "No", "Yes"))
passengers1
# Plot barplot of passenger Sex
ggplot(passengers, aes(x = Gender)) +
  geom_bar()
ggplot(passengers, aes(x = Age, y = Fare)) +
  geom_point()
# Scatter plot of Age vs Fare colored by Sex
ggplot(passengers %>% drop_na(), aes(x = Age, y = Fare, color = Gender)) +
  geom_point()
# Plot barplot of passenger Sex & fill according to Survival
ggplot(passengers1, aes(x = Gender, fill = Survived)) +
  geom_bar()


                 