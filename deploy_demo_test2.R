library(lubridate)
library(jsonlite)
load("PredictionDemo.RData")

#* @post /predict
predict <- function(DOB,HEIGHT,WEIGHT,Diabetes,BloodSugar,HistoricAdverseTerms,HighBloodPressure,Aviation,Cholesterol_Reading){
    data <-list(DOB=DOB,HEIGHT=HEIGHT,WEIGHT=WEIGHT,Diabetes=Diabetes,BloodSugar=BloodSugar,HistoricAdverseTerms=HistoricAdverseTerms,HighBloodPressure =HighBloodPressure,Aviation=Aviation,Cholesterol_Reading=Cholesterol_Reading)
    prediction <- do.call(model,data)
 
}


