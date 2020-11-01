# 1024 : 768
# 4 : 3
dat <- read.csv("multiple-studies-2.csv")

filename <- "sampling-distribution-N1000.png"
height <- 512
width <- height * (4/3)
main.label = "Histogram of sample means (N=1000)"
png(filename, width=width, height=height, units="px")
hist(dat$N.1000, xlab="Sample mean", ylab="Count", main="", cex.main=1.25, cex.lab=1.5, cex.axis=1.5)
dev.off()


# panelled to show variation with N
library(ggplot2)
sample.mean <- c(dat$N.10, dat$N.1000)
N <- rep(c(10,1000), each=1000)
narrow.form <- data.frame(N=N, sample.mean=sample.mean)




filename <- "sampling-distributions-by-N.png"
height <- 512
width <- height * (5/3)
png(filename, width=width, height=height, units="px")
p7 <- ggplot(narrow.form, aes(x = sample.mean)) +
        geom_histogram(aes(y = ..count..), bins = 21) +
        scale_x_continuous(name = "Sample mean") +       
        scale_y_continuous(name = "Count") +
        ggtitle("Histogram of sample means") +
        theme(axis.text.x=element_text(size = 18),
        	  axis.text.y=element_text(size = 18),
        	  plot.title = element_text(size = 18),
        	  axis.title.x=element_text(size = 18),
        	  axis.title.y=element_text(size = 18),
        	  strip.text.x = element_text(size = 18)) +      
        facet_grid(. ~ N, scales = "fixed")
p7
dev.off()