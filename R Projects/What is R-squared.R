# install.packages("correlation")
# install.packages("ggplot2")
# install.packages("patchwork")

library(correlation)   # create the database
library(ggplot2)
library(patchwork)

# Graph 1. R2 = 0%

mydata_0 <- simulate_simpson(n = 500, r = 0, groups = 1)

p1 <- ggplot(mydata_0, aes(V1, V2)) +
  geom_point(shape = 1, fill = "white", color = "firebrick1") +
  geom_smooth(method = "lm", se = FALSE, color = "firebrick1") +
  theme_minimal() +
  annotate("text", x = 3, y = -3, label = "R-squared: 0%") +
  labs(x = "", y = "")
p1

# Graph 2. R2 = 10%

mydata_0.1 <- simulate_simpson(n = 500, r = sqrt(0.1), groups = 1)

p2 <- ggplot(mydata_0.1, aes(V1, V2)) +
  geom_point(shape = 1, fill = "white", color = "deepskyblue3") +
  geom_smooth(method = "lm", se = FALSE, color = "deepskyblue3") +
  theme_minimal() +
  annotate("text", x = 3, y = -3, label = "R-squared: 10%") +
  labs(x = "", y = "")
p2

# Graph 3. R2 = 50%

mydata_0.5 <- simulate_simpson(n = 500, r = sqrt(0.5), groups = 1)

p3 <- ggplot(mydata_0.5, aes(V1, V2)) +
  geom_point(shape = 1, fill = "white", color = "goldenrod1") +
  geom_smooth(method = "lm", se = FALSE, color = "goldenrod1") +
  theme_minimal() +
  annotate("text", x = 3, y = -3, label = "R-squared: 50%") +
  labs(x = "", y = "")
p3

# Graph 4. R2 = 70%

mydata_0.7 <- simulate_simpson(n = 500, r = sqrt(0.7), groups = 1)

p4 <- ggplot(mydata_0.7, aes(V1, V2)) +
  geom_point(shape = 1, fill = "white", color = "mediumpurple1") +
  geom_smooth(method = "lm", se = FALSE, color = "mediumpurple1") +
  theme_minimal() +
  annotate("text", x = 3, y = -3, label = "R-squared: 70%") +
  labs(x = "", y = "")
p4

# Graph 5. R2 = 90%

mydata_0.9 <- simulate_simpson(n = 500, r = sqrt(0.9), groups = 1)

p5 <- ggplot(mydata_0.9, aes(V1, V2)) +
  geom_point(shape = 1, fill = "white", color = "orange3") +
  geom_smooth(method = "lm", se = FALSE, color = "orange3") +
  theme_minimal() +
  annotate("text", x = 3, y = -3, label = "R-squared: 90%") +
  labs(x = "", y = "")
p5

# Graph 6. R2 = 100%

mydata_1 <- simulate_simpson(n = 500, r = sqrt(1), groups = 1)

p6 <- ggplot(mydata_1, aes(V1, V2)) +
  geom_point(shape = 1, fill = "white", color = "palegreen4") +
  geom_smooth(method = "lm", se = FALSE, color = "palegreen4") +
  theme_minimal() +
  annotate("text", x = 3, y = -3, label = "R-squared: 100%") +
  labs(x = "", y = "")

p6

# Graph 7. Merge all graphs

(p1 + p2 + p3) / (p4 + p5 + p6)






