
library(ggplot2)
summary(iris)

# Prepare data and create dotplots
p <- ggplot(iris, aes(Sepal.Length, Sepal.Width)) + 
  geom_point(colour = "orange")+
  theme_classic()
p

# Add vertical lines
p + 
  geom_vline(xintercept=mean(iris$Sepal.Length))+
  geom_vline(xintercept=7,
              size=1.5, 
              linetype = "dashed",
              alpha = 0.5)

# Add horizontal lines
p +
  geom_hline(yintercept = 3,
             linetype = 3,
             size =1)

# Add diagonal lines
p + 
  geom_abline(intercept =3.5, 
              slope = -0.2, 
              colour = "skyblue", 
              size = 2) +
  scale_x_continuous(expand = c(0,0), limits = c(0,9))


