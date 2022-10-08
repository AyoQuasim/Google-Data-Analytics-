#For bias function, we need to install SimDesign
install.packages("SimDesign")

#Load SimDesign
library("SimDesign")

#bias to compare actual and predicted data
#inputing the data
actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp)