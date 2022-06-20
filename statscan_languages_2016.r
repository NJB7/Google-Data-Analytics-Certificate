library(tidyverse)
languages_df <- read_csv("/Users/nicol/R_data/Indigenous_Languages.csv") # reassign path from the defaul /Users/nicol/...csv

view(languages_df)

ggplot(data = languages_df) +
    geom_point(mapping = aes(x = Male, y = Languages, color = "red")) +
    geom_point(mapping = aes(x = Female, y = Languages, color = "purple"))
# to do: add column for language families to group by
# note: explore other visualizations, though I'm not sure this is the best dataset for that because there's no change over time # nolint
