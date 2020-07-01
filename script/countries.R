#国の名前のリストを作る
countryname<-c()
countryname<-read.csv("~/R/covid-19-tracker/countries.csv",header = F)
country<-as.data.frame(NULL)
countryl<-as.list(NULL)
#各国データを格納する

i=1
cc<-paste("~/R/covid-19-tracker/data/",countryname[i,1],".csv",sep="")
country<-read.csv(cc)
countryl[[i]]<-country
for(i in 2:nrow(countryname)){
  cc<-paste("~/R/covid-19-tracker/data/",countryname[i,1],".csv",sep="")
  country<-read.csv(cc)
  countryl[[i]]<-country
}
