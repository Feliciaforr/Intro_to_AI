#Author: Forrester, Date: September 4, 2025, Purpose: Simple Regression

# Get some dummy dataset
cars <- mtcars

# Scatter plot on training data
scatter.smooth(x=cars$mpg, y=cars$disp, main="SpeedVSdistance")

#Calculate correlation value
cor(cars$mpg, cars$disp)

#split train and testing data for regression
training_data <- cars[1:16,]
test_data <-cars[17:32,]

#build a regression model
regression_result <- lm (mpg ~ disp, data=training_data)

#print
regression_result

#predict regression fucntion on test data
prediction_result <- predict(regression_result, test_data)

#print 
prediction_result

#results of prediction
actual_prediction_values <- data.frame(cbind(actuals = training_data$mpg, predicteds=prediction_result))
