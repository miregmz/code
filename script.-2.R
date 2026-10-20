library(tidyverse)

hist_p <- ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.1, boundary = 0) +
  scale_x_continuous(breaks = 0:5) +
  scale_y_continuous(breaks = seq(0, 7000, by = 2000)) +
  coord_cartesian(xlim = c(0, 5), ylim = c(0, 7000)) +
  labs(
    title = "Diamond Counts by Carat Weight",
    subtitle = "Most diamonds weigh less than one carat.",
    x = "Carat (weight)",
    y = "Number of diamonds",
    caption = "Source: ggplot2::diamonds dataset (53,940 diamonds)."
  )

ggsave(plot = hist_p, file = "diamonds.png")
