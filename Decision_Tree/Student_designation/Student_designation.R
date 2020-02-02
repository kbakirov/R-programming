#executing "tree" and "tidyverse" library
library(tree)
library(tidyverse)

#setting working directory
print(getwd())
setwd("C:/Users/Kuanysh/Documents/GitHub/R-programming/Decision_Tree/Student_designation")

#reading StudentData
student_data <- read.csv("StudentData.csv", fileEncoding = "UTF-8-BOM")

#exploring data
print(student_data)
summary(student_data)

#plotting scatterplot to see correlation
ggplot(data = student_data) + 
  geom_point(mapping = aes(x=Study_Time, y= GPA, color=Designation, shape=Designation))

#constructing decision tree
tree.student_data = tree(Designation~., data = student_data)

#plotting tree
plot(tree.student_data)
text(tree.student_data, pretty = 0)

#we build our tree
tree.student_data

