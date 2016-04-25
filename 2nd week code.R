#week2

library(SDSFoundations)

animaldata <- AnimalData

View(animaldata)

head(animaldata)

table(animaldata$Sex);

plot(animaldata$Sex, main = "Bar chart of animal gender", xlab = 'animal gender', ylab = "animal count")

dev.off()

hist(animaldata$Age.Intake, main = "Histogram of intake ages", xlab = "age at intake")

dev.off()


femaleage = animaldata$Age.Intake[animaldata$Sex == "Female"]

maleage = animaldata$Age.Intake[animaldata$Sex == "Male"]


hist(femaleage, main = "Histogram of female ages", xlab = "age at intake", ylab = "count of female dogs")

hist(maleage, main = "histogram of male dog ages", xlab = "age at intake", ylab = "count of male dogs", breaks = 15)

max(maleage)

max(femaleage)

which(animaldata$Age.Intake == 17)

animaldata[415,]

#measures of center and spread

mean(animaldata$Age.Intake)

median(animaldata$Age.Intake)

sd(animaldata$Age.Intake)

fivenum(animaldata$Age.Intake)


#R_code_prelabs



library(SDSFoundations)

animaldata <- AnimalData


str(animaldata)
summary(animaldata)
head(animaldata$Outcome.Type, n = 10)
View(animaldata)

table(animaldata$Outcome.Type)
adopted <- animaldata[animaldata$Outcome.Type == "Adoption",]

daysToAdopt <- adopted$Days.Shelter

hist(daysToAdopt)
fivenum(daysToAdopt)
mean(daysToAdopt)

sd(daysToAdopt)
which(animaldata$Days.Shelter == max(daysToAdopt))

animaldata[425,]

(211 - mean(daysToAdopt))/sd(daysToAdopt)


#week2

library(SDSFoundations)

animaldata <- AnimalData

dogs <- animaldata[animaldata$Animal.Type == "Dog",]

nrow(dogs[dogs$Age.Intake >=1,])

cats <- animaldata[animaldata$Animal.Type == "Cat",]

nrow(cats[cats$Age.Intake >= 1,])

adultDogs <- dogs[dogs$Age.Intake >= 1,]

adultCats <- cats[cats$Age.Intake >= 1,]

?hist
hist
methods(hist)
hist.default

hist(adultDogs$Weight)

hist(adultCats$Weight)

mean(adultCats$Weight)
sd(adultCats$Weight)

(8.603571 - 13)/1.911517

pnorm(2.299969, lower.tail = F)

1 - pnorm(2.299969)

fivenum(adultDogs$Weight)

zdog13 <- (13 - mean(adultDogs$Weight) )/ sd(adultDogs$Weight)

pnorm(zdog13)

pnorm(zdog13, lower.tail = F)


fivenum(adultCats$Weight)

mean(adultCats$Weight)
sd(adultCats$Weight)

sd(adultDogs$Weight)

#problem set

table(animaldata$Intake.Type)

animaldata$Intake.Type[animaldata$Intake.Type == "Owner Surrender"]

nrow(animaldata$Intake.Type[animaldata$Intake.Type == "Owner Surrender"])

intakeTypeOS <- animaldata$Intake.Type[animaldata$Intake.Type == "Owner Surrender"]

fix(intakeTypeOS)

class(intakeTypeOS)

length(intakeTypeOS)/length(animaldata)

str(animaldata)

fix(animaldata)

intakeTypeOS <- animaldata[animaldata$Intake.Type == "Owner Surrender",]

rtrned2ownr <- intakeTypeOS[intakeTypeOS$Outcome.Type == "Return to Owner",]

mean(rtrned2ownr$Days.Shelter)


pnorm(4.5, mean = 6.7, sd = 1.1, lower.tail = F)

pnorm(5.38, mean = 6.7, sd = 1.1, lower.tail = T)

pnorm(8.79, mean = 6.7, sd = 1.1, lower.tail = F)

?pnorm

