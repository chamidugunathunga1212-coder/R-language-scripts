#################################################
# Airport Operations Probability Calculations
#################################################

### 1) Flight arrival time (Exponential distribution)
# Average time = 20 minutes -> lambda = 1/20
lambda <- 1/20

# Probability next flight arrives within 15 minutes
p_flight <- pexp(15, rate = lambda)

cat("1) Probability flight arrives within 15 minutes:", p_flight, "\n")


### 2) Lost items (Poisson distribution)
# Average 2 lost items per hour
mu <- 2

# Probability of 0 lost items in next hour
p_no_lost <- dpois(0, lambda = mu)

cat("2) Probability of no lost items in next hour:", p_no_lost, "\n")


### 3) Baggage scanning failures (Binomial distribution)
# n = 20 bags, failure probability = 0.05
n <- 20
p <- 0.05

# Probability more than 2 trigger manual inspection
p_more_than_2 <- 1 - pbinom(2, size = n, prob = p)

cat("3) Probability more than 2 bags trigger inspection:", p_more_than_2, "\n")
