# 01. descriptive statistics
# data = February_2012_csv.csv
pew <- read.csv("dataset/February_2012_csv.csv", header = TRUE)

# dimensions (rows and columns)
dim(pew)

# columm names
names(pew)

# column : q16 
# How often, if ever, do you talk about politics or current events with your family and friends?
# very often = 1, sometimes = 2, rarely = 3, never = 4, Don't know = 8, Refused = 9

# response frequencies
table(pew$q16)

# change other column name, to preserve original data
pew$q16m <- pew$q16

# missing values treatment : 8, 9 -> missing value
pew$q16m[pew$q16 == 8 | pew$q16 == 9] <- NA

# cross-tabulation
table(pew$q16, pew$q16m, useNA = 'always')

# total cases including missing value
length(pew$q16)

# cases except missing value
length(pew$q16[!is.na(pew$q16m)])

# sum expect missing value
sum(pew$q16m, na.rm = TRUE)

# mean
mean(pew$q16m, na.rm = TRUE)

# median
median(pew$q16m, na.rm = TRUE)

# mode
which.max(table(pew$q16m))

# mininum, [1]
range(pew$q16m, na.rm = TRUE) [1]

# maximum, [2]
range(pew$q16m, na.rm = TRUE) [2]

# quantile 25%
quantile(pew$q16m, prob = c(0.25, 0.75), na.rm = TRUE) [1]

# quantile 75%
quantile(pew$q16m, prob = c(0.25, 0.75), na.rm = TRUE) [2]

# variance
var(pew$q16m, na.rm = TRUE)

# standard deviation
sd(pew$q16m, na.rm = TRUE)

# data = LungCapData
LungCapData <- read.table("rstudio/dataset/LungCapData.txt", header = TRUE)

# standard deviation by taking the square root of the variance
sqrt(var(LungCapData$LungCap))

# minimum observation
min(LungCapData$LungCap)

# maximum obseravtion
max(LungCapData$LungCap)

# range
range(LungCapData$LungCap)

# quantile 
quantile(LungCapData$LungCap, probs = 0.90)

# quantile 25%, 50%, 75%
quantile(LungCapData$LungCap, probs = c(0.25, 0.50, 0.75))

# Pearson's correlation using the "cor" command
cor(LungCapData$LungCap, LungCapData$Age)

# Spearman's correlation
cor(LungCapData$LungCap, LungCapData$Age, method = "spearman")

# covariance
cov(LungCapData$LungCap, LungCapData$Age)

# summary
summary(LungCapData)
