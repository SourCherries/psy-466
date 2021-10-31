# Green et al., Paranoid Thoughts Scale (GPTS)
# Scores on each scale can range from 16 to 80. Higher scores indicate greater levels of paranoid thinking.

# General population 	M = 23 +/- 11 SD (n=7300)
# Psychosis 			M = 38 +/- 21 SD (n=1804)
# Persecutory delusions M = 59 +/- 15 SD (n=360)
#	Just model 1st two groups

sn <- c(7300, 1804)
p <- sn / sum(sn) # 80/20 percent

GPTS <- rnorm(100)
GPTS[1:80] <- GPTS[1:80] * 11 + 23
GPTS[81:100] <- GPTS[81:100] * 21 + 38

GPTS[GPTS<16] <- 16
GPTS[GPTS>80] <- 80

# Intermediate
V <- 80 - GPTS

# Mean Trust Rating
MTR <- (V)*6/(80-16) + 1 + rnorm(100)*5
MTR[MTR<1] <- 1
MTR[MTR>7] <- 7

plot(GPTS, MTR)

mod.par <- lm(GPTS ~ MTR)

Participant <- seq(100)
dat.par <- data.frame(Participant=Participant, MTR=MTR, GPTS=GPTS)



write.csv(dat.par, file="lab-5-data.csv", row.names=FALSE)

write.csv(format(dat.par, digits=2, nsmall=2), file="lab-5-data.csv", row.names=FALSE)




# END
# ------------------------------------------------------------------
# ------------------------------------------------------------------