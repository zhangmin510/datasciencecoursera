# R code for week 1 quiz
print("Reading hw1_data.csv...")
data <- read.csv("hw1_data.csv")
# Question 11
print("column names")
names(data)

# Question 12
print("the first 2 rows")
head(data, n = 2) # Or data[1:2,]

# Question 13
print("observations(i.e. rows)")
length(data[,1]) # Or nrow(data)

# Question 14
print("the last 2 rows")
tail(data, n = 2)

# Question 15
print("47th value of the Ozone")
data[47,1]

# Question 16
# How many missing values are in the Ozone column of this data frame?

ozone <- data[,1]
na <- is.na(ozone)
length(ozone[na])

# Question 17
print("mean of ozone column exclude missing value")
mean(ozone, na.rm = TRUE)

# Question 18
print("Extract the subset of rows of the data frame where Ozone values")
print("are above 31 and Temp values are above 90. What is the mean of")
print("Solar.R in this subset")
s1 <- subset(data, Ozone > 31)
s2 <- subset(s1, Temp > 90, Solar.R)
mean(s2[,1])

# Question 19
print("What is the mean of 'Temp' when 'Month' is equal to 6?")
temp <- subset(data, Month == 6, Temp)
mean(temp[,1])

# Question 20
print("What was the maximum ozone value in the month of May (i.e. Month = 5)?")
may <- subset(data, Month == 5, Ozone)
max(may[,1], na.rm = TRUE)



