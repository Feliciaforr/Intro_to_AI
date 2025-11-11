#Author: Forrester, Date: 11/06/2025; Purpose: Implement Neural Networks

#Load library Caret
library(caret)


#Load sample data set
dataset <- iris

#Print head of data
head(dataset)

# 80% split for training data and 20% split for validation data

 validation_index <- createDataPartition(dataset$Species, p=0.80, 
list=FALSE)

validation <- dataset[-validation_index,]

 dataset <- dataset[validation_index,]

# cross validations: 3, 5, 10-fold cross validations

 control <- trainControl(method="cv", number=10)
 metric <- "Accuracy"

#Train the model using LDA/Linear Determinant Analysis

set.seed(7)
fit.lda <- train(Species~., data=dataset, method="lda", metric=metric, 
trControl= control)

set.seed(7)
fit.rf <- train(Species~., data=dataset, method="rf", metric=metric, 
trControl= control)

#summarizing the accuracy of LDA models
results <- resamples(list(lda=fit.lda, rf=fit.rf))
summary(results)


#Output


Call:
summary.resamples(object = results)

Models: lda, rf 
Number of resamples: 10 

Accuracy 
         Min.   1st Qu. Median      Mean 3rd Qu. Max. NA's
lda 0.8333333 1.0000000      1 0.9750000       1    1    0
rf  0.7500000 0.9166667      1 0.9416667       1    1    0

Kappa 
     Min. 1st Qu. Median   Mean 3rd Qu. Max. NA's
lda 0.750   1.000      1 0.9625       1    1    0
rf  0.625   0.875      1 0.9125       1    1    0

