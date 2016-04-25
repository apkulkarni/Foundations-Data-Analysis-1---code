#week 3

library(SDSFoundations)

bull <- BullRiders

length(bull)

?length
length(bull[,1])

first10 <- head(bull, n = 10);

length(first10[, first10$YearsPro >= 10])


top15 <- head(bull, n = 15);

min(top15$BuckOuts14)

lowest14Buckouts <- top15[top15$BuckOuts14 == min(top15$BuckOuts14), ]

lowest14Buckouts <- top15[top15$BuckOuts14 == min(top15$BuckOuts14), top15$Rides14]

View(lowest14Buckouts)

fix(lowest14Buckouts)

?BullRiders

fix(BullRiders)

lowest14Buckouts$Rides14


#Subset for riders that participated in at least one event in 2013

new_bull <- bull[bull$Events13  > 0 ,]

# Visualize and describe the first variable of interest
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

# Visualize and describe the second variable of interest
hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)

# Create a scatterplot
dev.off()
plot(new_bull$Rides13,new_bull$Top10_13)

# Add line of best fit
abline(lm(new_bull$Top10_13~new_bull$Rides13))

# Calculate the correlation coefficient
cor(new_bull$Rides13,new_bull$Top10_13)

# Create a correlation matrix 
vars <- c("Top10_13", "Rides13")
cor(new_bull[,vars])

bull<-BullRiders
plot(bull$Events12, bull$BuckOuts12)
abline(lm(bull$Events12~bull$BuckOuts12))


which(new_bull$Top10_13==2 & new_bull$Rides13==22)

new_bull[new_bull$Top10_13==2 & new_bull$Rides13==22,]

View(bull[4,])


#Labs week 3

new_bull12 <- bull[bull$Events12  > 0 ,]

# Visualize and describe the first variable of interest
hist(new_bull12$Rides12)
fivenum(new_bull12$Rides12)
mean(new_bull12$Rides12)
sd(new_bull12$Rides12)


# Create a correlation matrix 
vars <- c("Earnings12","RidePer12", "CupPoints12")
cor(new_bull12[,vars])

hist(new_bull12$Earnings12)
fivenum(new_bull12$Earnings12)


plot(new_bull12$RidePer12, new_bull12$Earnings12)

cor(new_bull12$RidePer12, new_bull12$Earnings12)


plot(new_bull12$CupPoints12, new_bull12$Earnings12)

cor(new_bull12$CupPoints12, new_bull12$Earnings12)

which(new_bull12$Earnings12 == max(new_bull12$Earnings12))

new_bull12[4,]

nooutlier <- new_bull12[new_bull12$Earnings12 < 1000000 ,] 

cor(nooutlier$RidePer12, nooutlier$Earnings12)

plot(nooutlier$CupPoints12, nooutlier$Earnings12)

cor(nooutlier$CupPoints12, nooutlier$Earnings12)

which(nooutlier$Earnings12 == max(nooutlier$Earnings12))

#Problem Set


new_bull <- bull[bull$Rides14  > 0 ,]

RidesPerEvent14 <- new_bull$Rides14/new_bull$Events14

hist(RidesPerEvent14)
fivenum(RidesPerEvent14)

plot(new_bull$Rank14, RidesPerEvent14)

cor(new_bull$Rank14, RidesPerEvent14)

studyTime <- read.csv("Studytime vs exam scores.csv")

studyTime

cor(studyTime$Minutes.Spent.Studying, studyTime$Exam.Grade)

cor(studyTime$Minutes.Spent.Studying, studyTime$Exam.Grade) ^ 2


plot(studyTime$Minutes.Spent.Studying, studyTime$Exam.Grade)


fix(studyTime)

studyTimeNew <- na.omit(studyTime)

studyTimeNew

cor(studyTimeNew$Minutes.Spent.Studying, studyTimeNew$Exam.Grade)
