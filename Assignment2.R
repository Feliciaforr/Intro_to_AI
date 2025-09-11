#Author:Forrester, date: 09/09/2025, Purpose: Assignment #2


#Dummy Data
cars <- mtcars

#scatter plot of training data

scatter.smooth (x =cars$mpg, y=cars$gear, main="SpeedVSdistance")

#Calculate correlation value
cor(cars$mpg, cars$gear)

#split train and testing data for regression
training_data <- cars[1:16]
test_data <- cars[17:32]

#build regression model
regression_result <-lm (mpg ~gear, data=training_data)

#print
regression_result 

#predict regression fucntion on test data
prediction_result <- predict(regression_result, test_data)


#print 
prediction_result

#results of prediction
actual_prediction_values <- data.frame(cbind(actuals = training_data$mpg, predicteds=prediction_result))

#output
 prediction_result
Chrysler Imperial          Fiat 128       Honda Civic    Toyota Corolla 
         15.80000          21.28571          21.28571          21.28571 
    Toyota Corona  Dodge Challenger       AMC Javelin        Camaro Z28 
         15.80000          15.80000          15.80000          15.80000 
 Pontiac Firebird         Fiat X1-9     Porsche 914-2      Lotus Europa 
         15.80000          21.28571          26.77143          26.77143 
   Ford Pantera L      Ferrari Dino     Maserati Bora        Volvo 142E 
         26.77143          26.77143          26.77143          21.28571 
