#Module #8 post for my LIS4370 blog. Welcome!

#Task 1 - Import Assignment 6 Data

#Place the Assignment 6 dataset (tab‑ or space‑delimited) on your computer.
#In R, read it into a data frame:
# choose file interactively
student6 <- read.table("Assignment 6 Dataset.txt", header = TRUE, stringsAsFactors = FALSE,sep = ",")
student6

#Load plyr and compute the mean of Grade by Sex
library(plyr)
gender_mean <- ddply(
  student6,
  "Sex",
  transform,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

#Write the grouped means to a text file
write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = ",",
  row.names = FALSE
)

#Task 2 - Filter Names Containing 'i'

#Convert the data (if not already) to a data frame (see above).
#Select rows where Name contains 'i' or 'I'
i_students <- subset(
  student6,
  grepl("[iI]", Name, ignore.case = TRUE)
)

#Extract just the names and write them to a CSV
write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)

#Task 3 - Export Filtered Dataset

#Save the full filtered data frame to a CSV
write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)

#Confirm the files gender_mean.txt, i_students.csv, and i_students_full.csv
#exist in your working directory.






