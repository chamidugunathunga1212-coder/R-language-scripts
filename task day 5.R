#### LAB 01

df <- read.csv("students.csv")

# Check data
head(df)
str(df)

df$Gender <- factor(df$X2,
                    levels=c(1,2),
                    labels=c("Male","Female"))

df$Accommodation <- factor(df$X3,
                           levels=c(1,2,3),
                           labels=c("Home","Boarded","Lodging"))

df$Age <- df$X1

summary(df$Age)
mean(df$Age)
sd(df$Age)

hist(df$Age,
     main="Age Distribution",
     xlab="Age",
     col="skyblue")

table(df$Gender)

barplot(table(df$Gender),
        col=c("blue","pink"),
        main="Gender Distribution")


table(df$Accommodation)

barplot(table(df$Accommodation),
        col=c("green","orange","purple"),
        main="Accommodation Distribution")



table(df$Gender, df$Accommodation)

barplot(table(df$Gender, df$Accommodation),
        beside=TRUE,
        legend=TRUE,
        col=c("blue","pink"),
        main="Gender vs Accommodation")

boxplot(Age ~ Gender, data=df,
        col=c("blue","pink"),
        main="Age vs Gender")


boxplot(Age ~ Accommodation, data=df,
        col=c("green","orange","purple"),
        main="Age vs Accommodation")

aggregate(Age ~ Gender + Accommodation, data=df, mean)


library(tidyr)

mean_table <- aggregate(Age ~ Gender + Accommodation, data=df, mean)
pivot_wider(mean_table,
            names_from = Accommodation,
            values_from = Age)


## LAB 2


Team <- c("Atlanta Braves","New York Mets","Philadelphia Phillies","Florida Marlins",
          "Houston Astros","Chicago Cubs","St. Louis Cardinals","Cincinnati Reds",
          "Milwaukee Brewers","Pittsburgh Pirates","San Diego Padres",
          "San Francisco Giants","Colorado Rockies","Arizona Diamondbacks",
          "New York Yankees","Boston Red Sox","Toronto Blue Jays",
          "Baltimore Orioles","Tampa Bay Devil","Cleveland Indians",
          "Chicago White Sox","Kansas City Royals","Minnesota Twins",
          "Detroit Tigers","Texas Rangers","Anaheim Angels",
          "Seattle Mariners","Oakland Athletics","Montreal Expos",
          "Los Angeles Dodgers")

X1 <- c(3.361,2.288,1.716,0.914,1.750,2.450,2.623,3.195,1.794,1.812,
        1.561,2.556,1.926,3.089,3.789,3.603,2.950,2.344,2.454,3.685,
        2.506,3.467,1.391,1.495,1.166,1.409,2.927,2.519,2.644,1.232)

X2 <- c(59.536,49.518,34.370,9.162,33.434,40.629,49.433,52.575,
        21.995,32.393,13.352,45.368,40.571,47.970,47.435,30.572,
        63.461,51.647,48.666,68.988,25.318,59.584,36.840,32.963,
        26.183,22.725,55.305,38.702,52.027,20.063)

X3 <- c(3,35,28,23,12,34,85,33,29,46,29,32,39,37,4,1,76,
        87,10,7,9,5,8,26,17,87,5,33,23,33)

df <- data.frame(Team,X1,X2,X3)


# Boxplot
boxplot(df$X1, main="Boxplot of Attendance")

# Histogram
hist(df$X1, main="Histogram of Attendance")

# Stem-Leaf
stem(df$X1)

# Statistics
mean(df$X1)
median(df$X1)
sd(df$X1)

quantile(df$X1)   # Gives Q1 & Q3
IQR(df$X1)

boxplot(df$X2, main="Boxplot of Salary")
hist(df$X2, main="Histogram of Salary")
stem(df$X2)

mean(df$X2)
median(df$X2)
sd(df$X2)

quantile(df$X2)
IQR(df$X2)

boxplot(df$X3, main="Boxplot of Years")
hist(df$X3, main="Histogram of Years")
stem(df$X3)

mean(df$X3)
median(df$X3)
sd(df$X3)

quantile(df$X3)
IQR(df$X3)


mode_function <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

# Check mode of Years
mode_function(df$X3)

outlier_function <- function(x){
  Q1 <- quantile(x,0.25)
  Q3 <- quantile(x,0.75)
  IQR_val <- IQR(x)
  
  lower <- Q1 - 1.5*IQR_val
  upper <- Q3 + 1.5*IQR_val
  
  x[x < lower | x > upper]
}

# Check outliers
outlier_function(df$X1)
outlier_function(df$X2)
outlier_function(df$X3)

















