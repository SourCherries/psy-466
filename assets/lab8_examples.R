library(dplyr)
library(ggplot2)

# n <- 10
# M <- c(10, 25, 40)
# std <- 2
# A <- rep(M[1], n) + rnorm(n, 0, 2)
# B <- rep(M[2], n) + rnorm(n, 0, 2)
# C <- rep(M[3], n) + rnorm(n, 0, 2)
# IV <- as.factor(rep(c("A","B","C"),each=n))
# DV <- c(A,B,C)
# df <- data.frame(IV,DV)
# summary(aov(DV ~ IV, df))

# 4000, 155, 5

std <- c(1, 8, 20)
M <- list()
ymin <- Inf
ymax <- -Inf
for (i in 1:3) {

	A<-rnorm(10,5,std[i])
	B<-rnorm(10,20,std[i])
	C<-rnorm(10,40,std[i])
	DV<-c(A,B,C)
	IV<-rep(c("A","B","C"),each=10)
	df<-data.frame(IV,DV)
	sum_aov<-summary(aov(DV~IV,df))
	print(sum_aov)
	M[[i]] <- df
	ymin <- min(ymin, min(df$DV))
	ymax <- max(ymax, max(df$DV))
}	

ymin <- floor(ymin)
ymax <- round(ymax)

for (i in 1:3) {	
	df <- M[[i]]
	DV <- df$DV
	IV <- df$IV
	df_means <- df %>%
	            group_by(IV) %>%
	            summarise(means = mean(DV))

	file_name <- paste0("fig-anova-one-way-within-group-", i, ".png")
	png(file_name)
	ggplot(df_means, aes(x=IV, y=means))+
	  geom_point(data=df, aes(x=IV, y=DV, color=IV), size=3)+
	  geom_point(color="black", size=3)+
	  theme_classic(base_size=25) + 
	  ylim(ymin, ymax)
	dev.off()
}



for (i in 1:3) {	
	df <- M[[i]]
	DV <- df$DV
	IV <- df$IV
	
	df<-data.frame(IV,DV)
	sum_aov<-summary(aov(DV~IV,df))
	print(sum_aov)
}