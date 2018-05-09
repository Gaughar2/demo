library(lubridate)
library(jsonlite)
load("Test3.RData")

#* @post /predict
predict <- function(dob,height,weight,diabetes,bloodSugar,historicAdverse,highBloodPressure,aviation,cholesterolReading){
    data <-list(dob=dob,height=height,weight=weight,diabetes=diabetes,bloodSugar=bloodSugar,historicAdverse=historicAdverse,highBloodPressure =highBloodPressure,aviation=aviation,cholesterolReading=cholesterolReading)
    prediction <- do.call(Demo3,data)
return(list("isReferred" = unbox(prediction[1])))
}






