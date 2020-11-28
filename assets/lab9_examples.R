library(dplyr)
library(ggplot2)
# ------------------------------------------------------
std <- c(1, 5, 20)

for (i in 1 : 3){
	A<-rnorm(10,5,std[i])
	B<-rnorm(10,20,std[i])
	C<-rnorm(10,40,std[i])
	DV<-c(A,B,C)
	IV<-rep(c("A","B","C"),each=10)
	df<-data.frame(IV,DV)
	sum_aov<-summary(aov(DV~IV,df))
	
	print(sum_aov)
	
	
	df_means <- df %>%
	            group_by(IV) %>%
	            summarise(means = mean(DV))
	
	ggplot(df_means, aes(x=IV, y=means))+
	  geom_point(data=df, aes(x=IV, y=DV, color=IV), size=3)+
	  geom_point(color="black", size=3)+
	  theme_classic(base_size=25)
}