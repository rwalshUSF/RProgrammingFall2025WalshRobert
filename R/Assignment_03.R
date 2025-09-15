#Module #3 post for my LIS4370 blog. Welcome!

#Task 1 - Define and Inspect your data

# In R, create vectors (correcting any syntax issues)
Name<-c("Jeb","Donald","Ted","Marco","Carly","Hillary","Bernie")
ABC_poll<-c(4,62,51,21,2,14,15)
CBS_poll<-c(12,75,43,19,1,21,19)

# Combine into a data frame
df_polls<-data.frame(Name,ABC_poll,CBS_poll)

# Use str() and head() to inspect your data frame
str(df_polls)
head(df_polls)

#Task 2 - Compute Summary Statistics

# Compute the mean, median, and range for each poll

# mean for ABC poll
mean(df_polls$ABC_poll)
# median for ABC poll
median(df_polls$ABC_poll)
# range for ABC poll
range(df_polls$ABC_poll)
# mean for CBS poll
mean(df_polls$CBS_poll)
# median for CBS poll
median(df_polls$CBS_poll)
# range for CBS poll
range(df_polls$CBS_poll)

# Add a column for the difference between CBS and ABC
df_polls$Diff<-df_polls$CBS_poll-df_polls$ABC_poll

#Tasks 3 & 4 - Discuss and Reflect after reading text and programming analysis

#On your blog, write 2–3 paragraphs addressing:

#Key patterns you observe (e.g., which candidate shows the largest discrepancies).

#When looking at the data frame and the poll count values for each candidate, the data looks well organized at first with each candidates name and the estimated poll results side by side in each corresponding row for that candidate. The means for each poll are rather close with ABC_poll = \~24 and CBS_poll \~27 for a difference of \~3. The medians have slightly more variance as the ABC_polls = 15 and the CBS_polls = 19, a difference of 4. The ranges are close as well with the ABC_polls ranging from 2-62 and the CBS_polls from 1-75.

#When the 'Diff' column is calculated with CBS_poll-ABC_poll values: Donald shows the largest positive discrepancies and Ted shows the largest negative discrepancies.

#When the 'Diff' column is calculated with ABC_poll-CBS_poll values: Ted shows the largest positive discrepancies and Donald shows the largest negative discrepancies.

#Impact of using made‑up data—what limitations does this introduce?

#The main impact and risks/limitations of using made up data seems to be the method chosen for evaluating the difference between the two polls. Depending on which poll value is subtracted from the other has a large impact on the final result. For ex. the results look much different in favor of one candidate for another when ABC_polls values are subtracted from CBS_polls values versus CBS_polls values are subtracted from ABC_polls values.

#How you might collect or validate real poll data in a true analysis.

#One strategy I would implement to collect or validate real poll data in a true analysis would be to label the difference specifically or to add a two bar visualization that shows the counts side by side to display the difference rather than using a subtraction method.

#Include your R code (in a code chunk) and the generated plot.
library(ggplot2)
df_polls$Name<-as.factor(df_polls$Name)

# Here is the bar chart showing the difference between CBS_poll-ABC_poll
ggplot(df_polls,aes(x=Name,y=Diff, color=Diff, fill=Diff))+
  geom_bar(stat = "identity")+
  ylab("Difference between polls")+
  ggtitle("Difference between CBS_poll-ABC_poll")

# Re-calculate the Diff column for the difference between ABC and CBS
df_polls$Diff<-df_polls$ABC_poll-df_polls$CBS_poll

# Here is the bar chart showing the difference between ABC_poll-CBS_poll
ggplot(df_polls,aes(x=Name,y=Diff, color=Diff, fill=Diff))+
  geom_bar(stat = "identity")+
  ylab("Difference between polls")+
  ggtitle("Difference between ABC_poll-CBS_poll")
