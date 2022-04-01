# Import needed package - import tidyverse that includes dplyr
install.packages("tidyverse")
install.packages("dplyr")
library(dplyr)
library(tidyverse)

# Read data into dataframe
mechacar_data <- read.csv('MechaCar_mpg.csv')

# linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_data)

# Using the summary() function, determine the p-value 
# and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_data))

#Read suspension data into dataframe
suspension_data <- read.csv('Suspension_Coil.csv')

# mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# group each manufacturing lot by the mean, median, variance, 
# and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#T-Test for general mean 1500
t.test(suspension_data$PSI,mu=1500)

#T-Test for subset of each lot
t.test(suspension_data, Manufactu $PSI,mu=1500)


