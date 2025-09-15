#Module #4 post for my LIS4370 blog. Welcome!

#Task 1 - Data Preparation and Cleaning

#Define each vector in R, converting categorical strings to numeric codes
#(bad=1,good=0) (low=0,high=1) and handling NA's appropriately:

Frequency<-c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BloodPressure<-c(103,87,32,42,59,109,78,205,135,176)
FirstAssess<-c(1,1,1,1,0,0,0,0,NA,1) ##(bad=1,good=0)
SecondAssess<-c(0,0,1,1,0,0,1,1,1,1) ##(low=0,high=1)
FinalDecision<-c(0,1,0,1,0,1,0,1,1,1) ##(low=0,high=1)

df_hosp<-data.frame(Frequency,BloodPressure,FirstAssess,SecondAssess,FinalDecision,stringsAsFactors = FALSE)

#Inspect and handle NA's
summary(df_hosp)
df_hosp<-na.omit(df_hosp)

#Task 2 - Generate Basic Visualizations

# A. Side-by-Side Boxplots
boxplot(BloodPressure~FirstAssess,data = df_hosp,names = c("Good","Bad"),ylab = "Blood Pressure",main = "BP by First MD Assessment")
boxplot(BloodPressure~SecondAssess,data = df_hosp,names = c("Low","High"),ylab = "Blood Pressure",main = "BP by Second MD Assessment")
boxplot(BloodPressure~FinalDecision,data = df_hosp,names = c("Low","High"),ylab = "Blood Pressure",main = "BP by Final Decision")

# B. Histograms
# Visualize overall distributions of Frequency and Blood Pressure
hist(df_hosp$Frequency,breaks = seq(0,1,by=0.1),xlab = "Visit Frequency",main = "Histogram of Visit Frequency")
hist(df_hosp$BloodPressure,breaks = 8,xlab = "Blood Pressure",main = "Histogram of Blood Pressure")

#Task 3 - Interpretation and Discussion
# 2-3 paragraphs addressing:
# How blood pressure varies with each Doctor's assessment and the final decision:

# The side-by-side boxplot for the first MD assessment does a good job at visualizing
# the data frame with a chart that shows the minimum, maximum, and median blood
# pressure measurements for the patients that have been labeled as having good
# or bad blood pressure. The range from lower to upper quartiles is around 75-155
# for good and 40-100 for bad with a median of around 85-95 on both. The overall
# range for good measurements seems high at ~ 170.
#
# The side-by-side boxplot for the second MD assessment does a good job at visualizing
# the data frame also showing the minimum, maximum, and median blood
# pressure measurements for the patients that have been labeled as having low
# or high blood pressure. The range from lower to upper quartiles shrinks to around
# 75-110 for low and increases to 40-175 for high with the median remaining at
# around 95 for low and decreasing to around 60-75 for high. The range for low
# blood pressure  measurements is significantly lower at ~ 50.
#
# The side-by-side boxplot for the final decision does a good job at visualizing
# the data frame with a chart that shows the minimum, maximum, and median blood
# pressure measurements for the patients that have been labeled as having low
# or high blood pressure. The range from lower to upper quartiles shrinks to around
# 50-95 for low and increases to 95-175 for high with the median dropping to
# around 75 for low and increasing to around 105 for high.

# The final decision seems more conclusive and accurate with a narrower range
# for low blood pressure and a wider range for high blood pressure.

# Any notable patterns or outliers in the histograms:

# When looking at the histograms, I noticed a pattern between visit frequency and
# blood pressure levels that indicated the majority of patients visited between
# 0.1 and 0.4 with blood pressure measurements of 50-110. The outliers seem to be
# extreme blood pressure readings lower than 50 and higher than 150.

# Potential clinical implications or limitations of this made up data:

# One potential clinical implication or limitation of this made up data could be
# extreme blood pressure measurements. I am not a medical professional, however
# blood pressure measurements of 32 seem impossibly low for a patient to be alive.
# Extremely high blood pressure measurements could be caused by the patients
# mood or current state of being stressed out or very relaxed. Making up data
# in this case could have dangerous health consequences for patients.

# How handling of NA values affected your analysis:

# There was one NA value in the data set and it changed from NA to '0' in the first
# assessment column after applying the function to omit the NA value. This would
# affect the results by placing one more patient into the 'good' blood pressure
# category for the first assessment data.
