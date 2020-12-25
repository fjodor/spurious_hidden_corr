# Detecting hidden correlations in R using linear models

studies <- readRDS("studies.rds")

mod1 <- lm(score ~ study_hours, data = studies)
summary(mod1)

mod2 <- lm(score ~ alc, data = studies)
summary(mod2)

mod3 <- lm(score ~ study_hours + alc, data = studies)
summary(mod3)

