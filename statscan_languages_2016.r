library(tidyverse)
library("dplyr")
library("janitor")
languages_df <- read_csv("/Users/nicol/R_data/Indigenous_Languages.csv") # reassign path from the defaul /Users/nicol/...csv

view(languages_df)
colnames(languages_df)

summary(languages_df)
head(languages_df)
str(languages_df)
clean_names(languages_df)

plot(languages_df)
ggplot(data = languages_df) +
    geom_bar(mapping = aes(x = "2016_total", color = "purple")) +
    geom_bar(mapping = aes(x = "2011_total", color = "purple"))
# to do: add column for language families to group by
# note: explore other visualizations,
# though I'm not sure this is the best dataset
# for that because there's no change over time # nolint
# update: added 2011 totals for the available languages
# but Tableau still seems the better option for this dataset
