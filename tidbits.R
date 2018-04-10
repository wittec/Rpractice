#R for Data Science book

# ctl+shift+r inserts section break ---------------------------------------

#alt+shift+k opens shortcut key combos

#putting assignment inside () will also print the assignment

library(nycflights13)
library(tidyverse)

select(flights, starts_with("sch"))

ncanc <- flights %>% filter(!is.na(dep_delay), !is.na(arr_delay))

delays <- ncanc %>% group_by(tailnum) %>%
  summarise( delay = mean(arr_delay, na.rm = TRUE),
             n = n()
             )

ggplot(data = delays, mapping= aes(x=n, y = delay)) +
  geom_point(alpha = 1/10)


# new section -------------------------------------------------------------
delays %>% filter(n>25) %>%
  ggplot(mapping = aes(x=n, y=delay)) +
  geom_point(alpha = 1/10)



# trying some stats -------------------------------------------------------

anova


