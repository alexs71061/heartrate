mean(Heart_Rate$`Resting HR`)
mean(Heart_Rate$`Max HR`)
HeartrateDec = c(Heart_Rate$`Resting HR`[1:7])

HRlong = melt(Heart_Rate, id="Date")

ggplot(data = HRlong, aes(x = HRlong$Date, y = HRlong$value, color=HRlong$variable)) +
  geom_line()+
  geom_point()+
  geom_smooth(method = 'lm', se = FALSE)
