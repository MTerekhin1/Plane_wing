# Please work
library(dplyr)
library(tidyverse)
library(ggplot2)
Pressure_0 = read_csv("Pressure_0.csv")
Pressure_0 = Pressure_0[-c(1:4), ]
Pressure_0 = Pressure_0[, -c(3,4)]
Pressure_0 = Pressure_0[1:165, ]
Pressure_0$...2 = as.numeric(Pressure_0$...2)
Pressure_0$`[Name]` = as.numeric(Pressure_0$`[Name]`)
Pressure_0$Cp = Pressure_0[[2]]/(0.5*1.069*4225)
Pressure_0_top = Pressure_0[1:79, ]
Pressure_0_bottom = Pressure_0[80:nrow(Pressure_0), ]
Pressure_0_top = Pressure_0_top[nrow(Pressure_0_top):1,]

Pressure_5 = read_csv("Pressure_5.csv")
Pressure_5 = Pressure_5[-c(1:4), ]
Pressure_5 = Pressure_5[, -c(2)]
Pressure_5 = Pressure_5[1:165, ]
Pressure_5$...3 = as.numeric(Pressure_5$...3)
Pressure_5$`[Name]` = as.numeric(Pressure_5$`[Name]`)
Pressure_5$Cp = Pressure_5[[2]]/(0.5*1.069*4225)
Pressure_5_top = Pressure_5[1:80, ]
Pressure_5_bottom = Pressure_5[80:nrow(Pressure_5), ]
Pressure_5_top = Pressure_5_top[nrow(Pressure_5_top):1,]

Pressure_10 = read_csv("Pressure_10.csv")
Pressure_10 = Pressure_10[-c(1:4), ]
Pressure_10 = Pressure_10[, -c(2)]
Pressure_10 = Pressure_10[1:165, ]
Pressure_10$...3 = as.numeric(Pressure_10$...3)
Pressure_10$`[Name]` = as.numeric(Pressure_10$`[Name]`)
Pressure_10$Cp = Pressure_10[[2]]/(0.5*1.069*4225)
Pressure_10_top = Pressure_10[1:80, ]
Pressure_10_bottom = Pressure_10[80:nrow(Pressure_10), ]
Pressure_10_top = Pressure_10_top[nrow(Pressure_10_top):1,]

Pressure_15 = read_csv("Pressure_15.csv")
Pressure_15 = Pressure_15[-c(1:4), ]
Pressure_15 = Pressure_15[, -c(2)]
Pressure_15 = Pressure_15[1:165, ]
Pressure_15$...3 = as.numeric(Pressure_15$...3)
Pressure_15$`[Name]` = as.numeric(Pressure_15$`[Name]`)
Pressure_15$Cp = Pressure_15[[2]]/(0.5*1.069*4225)
Pressure_15_top = Pressure_15[1:80, ]
Pressure_15_bottom = Pressure_15[80:nrow(Pressure_15), ]
Pressure_15_top = Pressure_15_top[nrow(Pressure_15_top):1,]

ggplot() + 
  geom_line(data = Pressure_0_bottom, aes(x=Pressure_0_bottom$`[Name]`, y=Pressure_0_bottom$Cp), color = "blue") +
  geom_line(data = Pressure_0_top, aes(x=Pressure_0_top$`[Name]`, y=Pressure_0_top$Cp), color = "blue") +
  geom_line(data = Pressure_5_top, aes(x=Pressure_5_top$`[Name]`, y=Pressure_5_top$Cp), color = "red") +
  geom_line(data = Pressure_5_bottom, aes(x=Pressure_5_bottom$`[Name]`, y=Pressure_5_bottom$Cp), color = "red") +
  geom_line(data = Pressure_10_top, aes(x=Pressure_10_top$`[Name]`, y=Pressure_10_top$Cp), color = "black") +
  geom_line(data = Pressure_10_bottom, aes(x=Pressure_10_bottom$`[Name]`, y=Pressure_10_bottom$Cp), color = "black") +
  geom_line(data = Pressure_15_top, aes(x=Pressure_15_top$`[Name]`, y=Pressure_15_top$Cp), color = "green") +
  geom_line(data = Pressure_15_bottom, aes(x=Pressure_15_bottom$`[Name]`, y=Pressure_15_bottom$Cp), color = "green") +
  xlab("Distance") +
  ylab("Cp") + 
  ggtitle("Distance vs Cp plot") 

plot = ggplot() + 
  xlab("Distance (m)") +
  ylab("Cp") +
  ggtitle("Distance across aerofoil vs Cp")

plot = plot + geom_line(data = Pressure_0_top, aes(x=Pressure_0_top$`[Name]`, y=Pressure_0_top$Cp), color = "blue") +
  geom_text(data = Pressure_0_top, aes(x = Inf, y = Inf, label = "Cp at 0 degrees"), hjust=1, vjust=1, color = "blue") +
  geom_line(data = Pressure_0_bottom, aes(x=Pressure_0_bottom$`[Name]`, y=Pressure_0_bottom$Cp), color = "blue") +
  geom_line(data = Pressure_5_top, aes(x=Pressure_5_top$`[Name]`, y=Pressure_5_top$Cp), color = "red") +
  geom_text(data = Pressure_5_top, aes(x = Inf, y = Inf, label = "Cp at 5 degrees"), hjust=1, vjust=2.5, color = "red") +
  geom_line(data = Pressure_5_bottom, aes(x=Pressure_5_bottom$`[Name]`, y=Pressure_5_bottom$Cp), color = "red") +
  geom_line(data = Pressure_10_top, aes(x=Pressure_10_top$`[Name]`, y=Pressure_10_top$Cp), color = "black") +
  geom_text(data = Pressure_10_top, aes(x = Inf, y = Inf, label = "Cp at 10 degrees"), hjust=1, vjust=4, color = "black") +
  geom_line(data = Pressure_10_bottom, aes(x=Pressure_10_bottom$`[Name]`, y=Pressure_10_bottom$Cp), color = "black") +
  geom_line(data = Pressure_15_top, aes(x=Pressure_15_top$`[Name]`, y=Pressure_15_top$Cp), color = "green") +
  geom_text(data = Pressure_10_top, aes(x = Inf, y = Inf, label = "Cp at 15 degrees"), hjust=1, vjust=5.5, color = "green") +
  geom_line(data = Pressure_15_bottom, aes(x=Pressure_15_bottom$`[Name]`, y=Pressure_15_bottom$Cp), color = "green") 
  

plot
