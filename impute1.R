ggplot(db, aes(maxEducLevel)) +
  geom_histogram(color = "#000000", fill = "#0099F8") +
  ggtitle("Max Edu  Distribution") +
  theme_classic() +
  theme(plot.title = element_text(size = 18))# Include here your code for your first chosen imputation method
