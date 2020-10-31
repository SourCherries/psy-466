# analysis of multiple studies (law of large numbers)
num_studies <- 3
N <- 10**seq(0, num_studies-1)
rows <- sum(N)
study <- c(rep("A", N[1]), rep("B", N[2]), rep("C", N[3]))
participant <- seq(1,rows)
dat <- data.frame(study=study, participant=participant)
write.csv(dat, "multiple-studies-1.csv", row.names=F)


# analysis of multiple studies (central limit theorem)
sample_size = c(10, 1000)
num_studies <- 1000
N.10 <- seq(1, num_studies)
N.1000 <- seq(1, num_studies)
for (i in seq(1, num_studies)) {
	N.10[i] <- mean(rexp(sample_size[1], rate=1)*10)
	N.1000[i] <- mean(rexp(sample_size[2], rate=1)*10)	
}
study <- seq(1,1000)
dat <- data.frame(study=study, N.10=N.10, N.1000=N.1000)
write.csv(dat, "multiple-studies-2.csv", row.names=F)