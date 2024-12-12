# Read the provided data file into the dataframe
df <- read.csv("/Users/sylvia/Documents/HIST-1354-YidiWang/historical_trade_data.csv")

# Inspect the first few rows of the dataset
head(df)

# Inspect the structure of the dataset
str(df)

# Select the rows where exports exceed 200,000
high_export_df <- df[df$Exports > 200000, ]

# Add a new column for trade balance (exports - imports)
df$Trade.Balance <- df$Exports - df$Imports

# Create a line plot to visualize the trade balance over time using ggplot2
library(ggplot2)

ggplot(df, aes(x = Year, y = Trade.Balance)) +
  geom_line(color = "red", linetype = "solid") +
  labs(title = "Historical Trade Data Visualization -- Trade Balance Over Time
  ", x = "Year", y = "Trade Balance") +
  theme_light()

# Save the resulting visualization as an image
ggsave("exercise2image.png")