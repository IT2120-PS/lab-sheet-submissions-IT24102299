setwd("C:\\Users\\admin\\Desktop\\IT24102299_Lab08_PS")

data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

##Question 01
popmean<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)
popvar<-var(Weight.kg.)

##Question 02
samples<-c()
n<-c()
for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)<-n
s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)

##Question 03
meanofmeans<-mean(s.means)
sdofmeans<-sd(s.means)

##Results
popmean
meanofmeans
popsd
sdofmeans
theoretical_sd<-popsd/sqrt(6)
theoretical_sd

##Create table
results<-data.frame(Sample=n, Mean=round(s.means,4), Std_Dev=round(s.sds,4))
print(results)