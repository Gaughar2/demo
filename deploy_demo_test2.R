library(lubridate)
library(jsonlite)
load("PredictionDemo.RData")

#* @post /predict
predict <- function(dob,height,weight,diabetes,bloodSugar,historicAdverseTerms,highBloodPressure,aviation,cholesterolReading){
    data <-list(dob=dob,height=height,weight=weight,diabetes=diabetes,bloodSugar=bloodSugar,historicAdverseTerms=historicAdverseTerms,highBloodPressure =highBloodPressure,aviation=aviation,cholesterolReading=cholesterolReading)
    prediction <- (unbox(do.call(Demo,data)))
 return(list(prediction))
}


