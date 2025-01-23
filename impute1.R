ggplot(db, aes(maxEducLevel)) +
  geom_histogram(color = "#000000", fill = "#0099F8") +
  ggtitle("Max Edu  Distribution") +
  theme_classic() +
  theme(plot.title = element_text(size = 18))# Include here your code for your first chosen imputation method
# calculating the most commun value of maxEducLevel. 
mode_edu <- as.numeric(names(sort(table(db$maxEducLevel), decreasing = TRUE)[1]))

# Imputing the missing value. 
db <- db  %>%
  mutate(maxEducLevel = ifelse(is.na(maxEducLevel) == TRUE, mode_edu , maxEducLevel))
# total income in millions
db <- db  %>%
  mutate(ingtot =ingtot/1000000 )

# Distribution of total income
ggplot(db, aes(ingtot)) +
  geom_histogram(color = "#000000", fill = "#0099F8") +
  geom_vline(xintercept = median(db$ingtot, na.rm = TRUE), linetype = "dashed", color = "red") +
  geom_vline(xintercept = mean(db$ingtot, na.rm = TRUE), linetype = "dashed", color = "blue") +  
  ggtitle(" Ingreso Total") +
  theme_classic() +
  theme(plot.title = element_text(size = 18))
