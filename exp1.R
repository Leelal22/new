# Install ggplot2 if not already installed
# install.packages("ggplot2")

# Load the library
library(ggplot2)

# Create a sample dataset
data <- data.frame(
  Category = c("A", "B", "C", "D"),
  Value = c(23, 17, 35, 29)
)

# 1. Bar Plot
ggplot(data, aes(x = Category, y = Value, fill = Category)) +
  geom_bar(stat = "identity") +
  ggtitle("Sample Bar Plot") +
  theme_minimal()

# 2. Pie Chart
data$Percentage <- data$Value / sum(data$Value) * 100
ggplot(data, aes(x = "", y = Percentage, fill = Category)) +
  geom_col() +
  coord_polar(theta = "y") +
  ggtitle("Sample Pie Chart") +
  theme_void()

# 3. Scatter Plot with another sample dataset
scatter_data <- data.frame(
  X = 1:10,
  Y = c(5, 7, 9, 6, 8, 12, 14, 11, 15, 13)
)

ggplot(scatter_data, aes(x = X, y = Y)) +
  geom_point(color = "blue", size = 3) +
  geom_line(color = "red") +
  ggtitle("Sample Scatter Plot") +
  theme_minimal()

