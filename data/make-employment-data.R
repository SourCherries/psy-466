status <- c("full-time", "part-time", "unemployed", "not looking")

prob_male <- c(30, 55, 10, 5)
n_male <- 40
employment_male <- sample(status, n, replace=TRUE, prob=prob)

prob_female <- c(20, 60, 5, 15)
n_female <- 40
employment_female <- sample(status, n, replace=TRUE, prob=prob)

employment <- c(employment_male, employment_female)
gender <- rep(c("male", "female"), each=n)

data <- data.frame(ID=seq(n*2), gender=gender, employment=employment)
write.csv(data, file = "employment.csv", row.names = FALSE)

# remember to append many rows of ",," after making this file!
# for lesson about closely examining your data files.
# also specific info about filtering in jamovi.

print("remember to append many rows of ,, after making this file!")
print("for lesson about closely examining your data files.")
print("# also specific info about filtering in jamovi.")