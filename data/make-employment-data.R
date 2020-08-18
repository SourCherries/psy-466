status <- c("full-time", "part-time", "unemployed", "not looking")

prob_male <- c(30, 55, 10, 5)
n_male <- 200
employment_male <- sample(status, n_male, replace=TRUE, prob=prob)

prob_female <- c(20, 60, 5, 15)
n_female <- n_male
employment_female <- sample(status, n_female, replace=TRUE, prob=prob)


employment <- c(employment_male, employment_female)
gender <- rep(c("male", "female"), each= n_male)

data <- data.frame(ID=seq(n_male*2), gender=gender, employment=employment)
write.csv(data, file = "employment.csv", row.names = FALSE)

# remember to append many rows of ",," after making this file!
# for lesson about closely examining your data files.
# also specific info about filtering in jamovi.

print("remember to append many rows of ,, after making this file!")
print("for lesson about closely examining your data files.")
print("# also specific info about filtering in jamovi.")