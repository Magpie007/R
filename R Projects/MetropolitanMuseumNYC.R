# Packages Installed

library(ggplot2)
library(MetBrewer)

# Reference: https://github.com/BlakeRMills/MetBrewer

# Graph 1 <<Adoration of the Magi from Seven Scenes from the Life of Christ>>, 1390, Austrian

ggplot(economics_long, aes(x=date, y=value01, colour=variable))+
  geom_line(size=1)+
  theme_classic()+
  scale_color_manual(values=met.brewer("Austria",5))

# Graph 2 <<Cap Negre>>, 1909, Henri-Edmond Cross, French

ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, colour=Species))+
  geom_point(size=3)+
  theme_bw()+
  scale_colour_manual(values=met.brewer("Cross",3))

# Graph 3 <<The Rhearsal of the Ballet Onstage>> by Edgar Degas

ggplot(data=diamonds, aes(x=carat, fill=cut))+
  geom_density(position="stack", alpha=0.7)+
  theme_classic()+
  scale_fill_manual(values=met.brewer("Degas"))

# Graph 4 << The King with Isis, Tomb of Haremhab>>

ggplot(data=iris, aes(x=Sepal.Length, fill=Species))+
  geom_histogram()+
  theme_bw()+
  scale_fill_manual(values=met.brewer("Egypt",3))

# Graph 5 <<Gustav Klimt>>

ggplot(diamonds, aes(x=price, y=..density..))+
  geom_histogram(aes(fill=cut), bins=100)+
  geom_density()+
  scale_fill_manual(values=met.brewer("Klimt"))+
  theme_light()

# Graph 6 <<Katsushika Hokusai>>

ggplot(data=iris, aes(x=Species, y=Petal.Length, colour=Species))+
  geom_violin(draw_quantiles = 0.5, size=1)+
  geom_jitter(width=0.1, alpha=0.4)+
  theme_light()+
  scale_color_manual(values=met.brewer("Hokusai1",3))

# Graph 7 <<Jean Auguste Dominique Ingres>>

ggplot(iris, aes(x=Species, y=Sepal.Length, fill=Species))+
  geom_dotplot(binaxis = "y", binwidth=0.1, stackdir="center", alpha=0.5)+
  theme_bw()+
  scale_fill_manual(values=met.brewer("Ingres",3))

# Graph 8 <<Terracotta neck-amphora (jar)>> 

ggplot(data=iris, aes(x=Species, y=Sepal.Length, colour=Species))+
  geom_boxplot(size=1.1)+
  theme_classic()+
  scale_colour_manual(values=met.brewer("Greek",3))

# Graph 9 <<Giovanni Battista Tiepolo>>

ggplot(diamonds, aes(x=color, y=price, fill=cut))+
  geom_col(width=0.5)+
  theme_minimal()+
  scale_fill_manual(values=met.brewer("Tiepolo",5))+
  coord_flip()

# Graph 10 <<Self-Portrait with a Straw Hat>> by Vincent van Gogh

ggplot(iris, aes(Sepal.Length, Sepal.Width, size=Petal.Width, fill=Species))+
  geom_point(alpha=0.3, shape=21)+
  scale_fill_manual(values=met.brewer("VanGogh2",3))+
  theme_light()


