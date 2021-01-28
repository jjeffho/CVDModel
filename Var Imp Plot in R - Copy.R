#Import Data
getwd()
data <- read.csv('data_for_modelling2.csv')

#Load RandomForest library
library('randomForest')

#Check data
str(data)

#Create model
data_model <- randomForest(heart_d_new ~ age +sex+cp+trestbps+chol+fbs+rest_ecg+max_h_rate+ex_ang+oldpeak+slope+Blood.P.Category+Cholesterol.Category+Heart.Rate.Category+ST.Depression.Category+ Age.Category,
                           data=data, ntree=1000, keep.forest=FALSE, importance=TRUE)

#Create Var Imp Plot
varImpPlot(data_model)
