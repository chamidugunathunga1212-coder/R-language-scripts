
# Binomial Distribution

##Probability of exactly 3 successes in 10 trials with p = 0.5


dbinom(3,size = 10,prob = 0.5)  # exact probability

# 

## Probability of 3 or fewer successes in 10 trials with p = 0.5

### Calculates the cumulative probability up to x successes.

# p -> cummalative probability
# q -> quartile
# r -> random 


?dbinom

dbinom(3,size = 10,prob = 0.5)
pbinom(3,size = 10,prob = 0.5)
pbinom(3,size = 10,prob = 0.5,lower.tail = FALSE)
qbinom(0.5,size = 10,prob = 0.5)
rbinom(10,size = 10,prob = 0.5)

dbinom(6,size = 15,prob = 0.4)
pbinom(6,size = 15,prob = 0.4,lower.tail = FALSE)


# Hypergeometric Distribution

?dhyper

N = 52
K =13
n=5
prob_2_hearts = dhyper(2,K,N-K,n)
print(prob_2_hearts)


defective_3_items = dhyper(3,20,13,6)
print(defective_3_items)

N = 20
K = 7
n = 6

at_least_3 = phyper(3,K,N-K,n)
print(at_least_3)


#  Poisson Distribution

lambda = 5
prob_7_calls = dpois(7, lambda)
print((prob_7_calls))



lambda = 10
prob_no_hits = dpois(0,lambda)
print(prob_no_hits)

at_least_5 = ppois(5,lambda,lower.tail = FALSE)
print(at_least_5)


# Geometric Distribution

p = 1/6
prob_4_rolls = dgeom(3, prob = p)
print(prob_4_rolls)







#### part 2

df = data.frame(
  ID = 1:8,
  Name = c("chamidu","dewmi","sayuri","chithira",NA,"koshidu","bob","helen"),
  Age = c(23,22,NA,45,50,NA,75,90),
  Score = c(85,NA,78,45,67,89,90,NA)
)

print(df)

# detecting missing values

## check null values
table(is.na(df))

## column-wise count of missing values
colSums(is.na(df))

# Handling the missing values

## method 1 - removing rows with missing values

df_clean = na.omit(df)
print(df_clean)

## method 2 - filling missing values with mean/median/mode

# fill the age column with mean

df$Age[is.na(df$Age)] = mean(df$Age,na.rm = TRUE)

print(df)

# fill the score column with median

df$Score[is.na(df$Score)] = median((df$Score),na.rm = TRUE)
print(df)



## Method 3: Using mice Library for Advanced Imputation


df = data.frame(
  ID = 1:8,
  Name = c("chamidu","dewmi","sayuri","chithira",NA,"koshidu","bob","helen"),
  Age = c(23,22,NA,45,50,NA,75,90),
  Score = c(85,NA,78,45,67,89,90,NA)
)
library(mice)
df_imputed = mice(df, method = "pmm", m = 1)
df_cleaned = complete(df_imputed)
print(df_cleaned)


# Handling Duplicates

df_duplicates = data.frame(
  ID = c(1, 2, 3, 3, 4, 5, 5, 6),
  Name = c("Alice", "Bob", "Charlie", "Charlie", "David", "Frank", "Frank",
           "George"),
  Age = c(25, 30, 30, 30, 40, 50, 50, 60)
)

print(df_duplicates)

# Detecting Duplicates

# Identify duplicates
duplicated(df_duplicates)

# Display duplicate rows
df_duplicates[duplicated(df_duplicates), ]

# Method 1: Remove All Duplicate Rows

df_unique = df_duplicates[!duplicated(df_duplicates), ]
print(df_unique)


# Method 2: Keep Only the Last Occurrence
df_last = df_duplicates[!duplicated(df_duplicates, fromLast = TRUE), ]
print(df_last)

# 3. Handling Outliers

# Sample Dataset with Outliers


df_outliers = data.frame(
  Student = c("A", "B", "C", "D", "E", "F", "G"),
  Scores = c(78, 85, 90, 95, 150, 200, 88) # 150 and 200 are outliers
)
print(df_outliers)



# Detecting Outliers


# Method 1: Using Boxplot
boxplot(df_outliers$Scores, main = "Boxplot for Scores")


# Method 2: Using IQR (Interquartile Range)

Q1 = quantile(df_outliers$Scores, 0.25)
Q3 = quantile(df_outliers$Scores, 0.75)
IQR_value = Q3 - Q1


 # Identifying Outliers

outlier_condition = df_outliers$Scores < (Q1 - 1.5 * IQR_value) |
  df_outliers$Scores > (Q3 + 1.5 * IQR_value)
print(df_outliers[outlier_condition, ])






#  Handling Outliers

# Method 1: Removing Outliers
df_no_outliers = df_outliers[!outlier_condition, ]
print(df_no_outliers)


# Method 2: Capping Outliers (Winsorizing)
# Cap extreme values at upper and lower thresholds
df_outliers$Scores[df_outliers$Scores > (Q3 + 1.5 * IQR_value)] = Q3 + 1.5 *
  IQR_value
df_outliers$Scores[df_outliers$Scores < (Q1 - 1.5 * IQR_value)] = Q1 - 1.5 *
  IQR_value
print(df_outliers)









