### Conducting Statistical Analysis on PGA data
### Created by John Webster
### Created on April 5th, 2025

# The purpose of this code is to gain experience using both R and different
# statistical techniques for skill development. I will be adhering to base R
# procedures for this analysis to strengthen my knowledge in that area.

#Disclaimer: I do not own this data, it was downloaded from Kaggle

#Begin by importing our PGA data for analysis
golf_data <- read.csv('PGATOUR_data2.csv')

#Make sure the data imported as a data frame
class(golf_data)

#Gather some quick summary information
summary(golf_data)

#I notice there are 136 NA values across all columns which makes me suspect
#there may be a surplus of empty rows in the dataset. Checking this with View.
View(golf_data)

#I confirmed there are 136 blank observations at the bottom of the data.
#dropping these values since there is no need to keep them.
golf_clean <- golf_data[-is.na(golf_data$EVENTS_PLAYED), ]

