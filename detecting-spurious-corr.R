# Detecting spurious correlations in R using linear models

# "In God we trust; all others bring data."
# Dr. W. Edwards Deming

babies <- readRDS("babies.rds")

mod_storks <- lm(babies ~ storks, data = babies)
summary(mod_storks)

mod_ind <- lm(babies ~ industrial, data = babies)
summary(mod_ind)

mod_both <- lm(babies ~ storks + industrial, data = babies)
summary(mod_both)
