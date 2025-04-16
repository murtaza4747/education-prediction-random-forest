
# Education Level Prediction using Random Forest

# Load libraries
library(boot)
library(randomForest)
library(ROCR)

# Load dataset
data <- read.csv("Income2 (1).csv")
data$Education <- as.factor(data$Education)

# Create bootstrap sample
set.seed(42)
totalS <- sample(1:21, 100, replace = TRUE)
validateS <- totalS[1:50]
buildS <- totalS[51:100]

# Create training and validation sets
build <- data[buildS,]
validate <- data[validateS,]

# Train the random forest model
MyModel <- randomForest(Education ~ ., data = build, ntree = 500, mtry = 2, importance = TRUE)

# Plot variable importance
varImpPlot(MyModel)

# Predict education levels on validation set
MyPredictions <- predict(MyModel, validate[,-5])
table(observed = validate[,5], predicted = MyPredictions)

# Plot ROC curves
ROC_Predictions <- predict(MyModel, validate[,-5], type = "prob")
Colors <- c("Green", "Blue", "Red", "Black")
Class <- levels(validate$Education)

for (i in 1:3) {
  true_values <- ifelse(validate[,5] == Class[i], 1, 0)
  pred <- prediction(ROC_Predictions[,i], true_values)
  perf <- performance(pred, "tpr", "fpr")
  if (i == 1) {
    plot(perf, col = Colors[i], main = "ROC Curve for Education Levels")
  } else {
    plot(perf, col = Colors[i], add = TRUE)
  }
  AUC <- performance(pred, measure = "auc")
  print(AUC@y.values)
}
