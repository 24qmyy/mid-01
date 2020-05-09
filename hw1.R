
library(ggplot2)
library(tidyverse)
data("mpg")

#1
mpg %>% ggplot(aes(x = displ,y = hwy)) +geom_point(aes(col = class))

#2
mpg %>% ggplot(aes(x = displ,y = hwy)) +geom_point(aes(col = class)) +geom_smooth(method = "lm")

#3

mpg %>% ggplot(aes(x = displ,y = hwy))+geom_point(aes(col = class)) +geom_smooth(aes(x = displ, y = hwy, linetype = drv))
