#import party package 
library(party)
#import partykit package
library(partykit)

#import readxl for reading excel file
library(readxl)
#store file in a variable
IInd <- read_excel("IInd.xlsx")
#store another file in another variable
IInd_year_2013_14_15_<- read_excel("IInd.xlsx")
#View(IInd)
#check Cata variable is factor or not 
is.factor(IInd$Cata)
#store Cata as a factor
IInd$Cata<-as.factor(IInd$Cata)
str(IInd)
summary(IInd)
#call sample() fun. that break data in 70% and 30% 
pre<-sample(2,nrow(IInd),replace = TRUE,prob = c(0.7,0.3))
str(pre)
#30% data store in train variable
train<-IInd[pre==2,]
View(train)
#70% data store in test variable
test<-IInd[pre==1,]
View(test)
#formula for define classification
r<-Cata~Total
#call ctree() fun. for make a decision tree
pre_ctree<-ctree(r,data=train)
#call predict() fun. to make classes
predict(pre_ctree)
a<-table(predict(pre_ctree),train$Cata,title("train"))
color1<-c("red", "orange", "blue")
barplot(m,col = color1,ylab = "No. of Students",xlab = "x=80-100r%, y=60-80%, z=blow 60%",cex.lab=1.5,main = "Train dataset",cex.main=2.0
         ,legend("topleft",legend = c("100-80",
                                      "80-60","Blow 60"),bty = "o", fill = c("red", "orange", "blue"))     )
barplot(a,legend(
  "topleft",legend=c("100-80",
                     "80-60","Blow 60"),cex = 1.0,
  bty="o",fill = c("red","orange","blue")
))
View(a)
barplot(m,col = color1,ylab = "No. of Students",cex.lab=1.5,main = "Test dataset",cex.main=2.0)
str(a)
plot(pre_ctree,type="simple")
summary(pre_ctree)
test_data<-predict(pre_ctree,newdata = test)
plot(test_data)
m<-table(test_data,test$Cata)
str(m)
m
print(testpred)
plot(testpred)
pie(table(testpred))

str(IInd)
IInd$`OS /INT`=as.numeric(IInd$`OS /INT`)
IInd$`DAA/INT`=as.numeric(IInd$`DAA/INT`)
IInd$`DBMS/INT`=as.numeric(IInd$`DBMS/INT`)
IInd$`IJP/INT`=as.numeric(IInd$`IJP/INT`)
IInd$`CBOT/INT`=as.numeric(IInd$`CBOT/INT`)
IInd$`OS/E`=as.numeric(IInd$`OS/E`)
IInd$`DAA/E`=as.numeric(IInd$`DAA/E`)
IInd$`DBMS/E`=as.numeric(IInd$`DBMS/E`)
IInd$`IJP/E`=as.numeric(IInd$`IJP/E`)
IInd$`CBOT/E`=as.numeric(IInd$`CBOT/E`)
View(IInd)

IInd$`UNIV. ROLL NO.`<-NULL
IInd$`STUDENT NAME`<-NULL
IInd$Year<-NULL
IInd$SEC<-NULL
IInd$`DBMS LAB/INT`<-NULL
IInd$`JAVA LAB/INT`<-NULL
IInd$`CS/INT`<-NULL
IInd$`DBMS LAB/E`<-NULL
IInd$`JAVA LAB/E`<-NULL
IInd$`CS/E`<-NULL
IInd$`GP/INT`=as.numeric(IInd$`GP/INT`)
str(IInd)
IInd$Cata<-NULL
IInd$STATUS<-NULL
IInd$`HVPE/E`<-NULL
IInd$`HVPE/INT`<-NULL
IInd$`MIS/E`=as.numeric(IInd$`MIS/E`)
IInd$`MIS/INT`=as.numeric(IInd$`MIS/INT`)
IInd$`WT/E`=as.numeric(IInd$`WT/E`)
IInd$`WT/INT`=as.numeric(IInd$`WT/INT`)
IInd$`AI/E`=as.numeric(IInd$`AI/E`)
IInd$`AI/INT`=as.numeric(IInd$`AI/INT`)
IInd$`MIS/E`=as.numeric(IInd$`MIS/E`)
IInd$`MIS/INT`=as.numeric(IInd$`MIS/INT`)
IInd$`DMW/DS/CSC-E`=as.numeric(IInd$`DMW/DS/CSC-E`)
IInd$`DMW/DS/CSC-INT`=as.numeric(IInd$`DMW/DS/CSC-INT`)
IInd$`MC/E`=as.numeric(IInd$`MC/E`)
IInd$`MC/INT`=as.numeric(IInd$`MC/INT`)
IInd$`WT LAB/E`<-NULL
IInd$`WT LAB/INT`<-NULL
IInd$`PROJ LAB/E`<-NULL
IInd$`PROJ LAB/INT`<-NULL
IInd$`GP/E`<-NULL
str(IInd)
#for aggregate
str(IInd_year_2013_14_15_)
IInd_year_2013_14_15_$`OS /INT`=as.numeric(IInd_year_2013_14_15_$`OS /INT`)
is.numeric(IInd_year_2013_14_15_$`OS /INT`)
IInd_year_2013_14_15_$`DAA/INT`=as.numeric(IInd_year_2013_14_15_$`DAA/INT`)
IInd_year_2013_14_15_$`DBMS/INT`=as.numeric(IInd_year_2013_14_15_$`DBMS/INT`)
IInd_year_2013_14_15_$`IJP/INT`=as.numeric(IInd_year_2013_14_15_$`IJP/INT`)
IInd_year_2013_14_15_$`CBOT/INT`=as.numeric(IInd_year_2013_14_15_$`CBOT/INT`)
IInd_year_2013_14_15_$`DBMS LAB/INT`=as.numeric(IInd_year_2013_14_15_$`DBMS LAB/INT`)
IInd_year_2013_14_15_$`JAVA LAB/INT`=as.numeric(IInd_year_2013_14_15_$`JAVA LAB/INT`)
View(IInd_year_2013_14_15_)

