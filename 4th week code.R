#pre-labs

library(SDSFoundations)

acl <- AustinCityLimits

#Subset the data for artists age 30 or older
older <-acl[acl$Age>=30,]

# Create tables of marginal distributions
genre <- table(older$Genre)
genre
gender <- table(older$Gender)
gender

# Create contingency table 
twoway <- table(older$Gender,older$Genre)
twoway

# Visualize the counts
barplot(twoway, legend=T, beside=T)

# Calculate P(A): the probability of each genre being played
prop.table(genre)

# Calculate P(A|B): the probability of each genre being played, given the artist’s gender
prop.table(twoway,1)


twoway1 <- table(older$Genre, older$Gender)

twoway1
prop.table(twoway1,2)

barplot(prop.table(twoway1,2), legend=T, beside=T)



#labs
library(SDSFoundations)

acl <- AustinCityLimits


males <-acl[acl$Gender == "M",]

genreMales <- table(males$Genre)
genreMales

grammyMales <- table(males$Grammy)
grammyMales

prop.table(grammyMales)

twoWayMales <- table(males$Genre, males$Grammy)
twoWayMales

prop.table(twoWayMales, 1)


barplot(t(prop.table(twoWayMales, 1)), beside = T)

?barplot

#problem set 
library(SDSFoundations)

acl <- AustinCityLimits

f100 <- acl[acl$Facebook.100k == T,]

ageAndf100 <- table(acl$Age.Group, acl$Facebook.100k)
ageAndf100

prop.table(ageAndf100, 1)

dat <- read.csv("C:/Users/Anand/Downloads/RoughWork - Sheet2.csv", header = T)
dat

data
xtabs(X~., data = dat)
