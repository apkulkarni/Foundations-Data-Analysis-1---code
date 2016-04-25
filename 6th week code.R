#prelabs

library(SDSFoundations)
world <- WorldBankData

# Subset data for just the United States and name the new data frame "us"
us <- world[world$Country.Code == "USA",]

# Select the years from 1990 and name the new data frame "us_select"
us_select <- us[us$year >= 1990, ]

# Create a new variable in our datset called internet.mil to make the number of users more interpretable (into millions)
us_select$internet.mil <- us_select$internet.users / 1000000

# Create a new variable in our dataset called time that represents "years since 1990"
us_select$time <- us_select$year - 1990

# Select the first 10 years (from 1990 to 1999) and name the new data frame "us_select_10"
us_select_10 <- us_select[us_select$time < 10,]

# Use a function to fit an exponential and logistic model for 1990-1999
expFit(us_select_10$time, us_select_10$internet.mil)
logisticFit(us_select_10$time, us_select_10$internet.mil)

# Based on the prior model parameters, predict the number of internet users in 2006
e <- expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
l <- logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)
e


us[us$year == 2006, ]

#labs

library(SDSFoundations)
world <- WorldBankData

world$propIntUsers <- world$internet.users/world$population

worldPost1990 <- world[world$year > 1989,]

worldPost1990$timePost1990 <- worldPost1990$year - 1990

denmarkPost1990 <- worldPost1990[worldPost1990$Country == 'Denmark',]

expFit(denmarkPost1990$timePost1990, denmarkPost1990$propIntUsers)

logisticFit(denmarkPost1990$timePost1990, denmarkPost1990$propIntUsers)


#problem set

library(SDSFoundations)
world <- WorldBankData



worldPost1994 <- world[world$year > 1994,]

worldPost1994$timePost1994 <- worldPost1994$year - 1995

brazilPost1994 <- worldPost1994[worldPost1994$Country == 'Brazil',]

brazilPost1994$mobile.users.mil <- brazilPost1994$mobile.users/1000000

expFit(brazilPost1994$timePost1994, brazilPost1994$mobile.users.mil)

logisticFit(brazilPost1994$timePost1994, brazilPost1994$mobile.users.mil)

tripleFit(brazilPost1994$timePost1994, brazilPost1994$mobile.users.mil)

logisticFitPred(brazilPost1994$timePost1994, brazilPost1994$mobile.users.mil, 30)
