#prelabs

library(SDSFoundations)

WR <- WorldRecords

unique(WR$Event)


#Subset the data
menshot <- WR[WR$Event=='Mens Shotput',]
womenshot <- WR[WR$Event=='Womens Shotput',] 

#Create scatterplots
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models
linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)


#labs

#Subset the data
mensMile <- WR[WR$Event=='Mens Mile',]
womensMile <- WR[WR$Event=='Womens Mile',] 

#Create scatterplots
plot(mensMile$Year,mensMile$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womensMile$Year,womensMile$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models
linFit(mensMile$Year, mensMile$Record)
linFit(womensMile$Year,womensMile$Record)


#problems


#Subset the data
mensPole <- WR[WR$Event=='Mens Polevault' & WR$Year > 1969,]
mensPole

max(mensPole$Record)

#Create scatterplots
plot(mensPole$Year,mensPole$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)


#Run linear models
linFit(mensPole$Year, mensPole$Record)

