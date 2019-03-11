library(jpeg, grid, ggplot2)

court_file = "../images/nba-court.jpg"

court_image = rasterGrob(readJPEG(court_file), width=unit(1, "npc"), height=unit(1, "npc"))




durant_shot_chart = ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()
ggsave("../images/kevin-durant-shot-chart.pdf", height=5, width=6.5)

curry_shot_chart = ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()
ggsave("../images/stephen-curry-shot-chart.pdf", height=5, width=6.5)

iggy_shot_chart = ggplot(data = iggy) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()
ggsave("../images/andre-iguodala-shot-chart.pdf", height=5, width=6.5)

green_shot_chart = ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()
ggsave("../images/draymond-green-shot-chart.pdf", height=5, width=6.5)

thompson_shot_chart = ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()
ggsave("../images/klay-thompson-shot-chart.pdf", height=5, width=6.5)




ggplot(data = all_five) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: GSW (2016 season)') +
  theme_minimal() + 
  facet_wrap(~ name)
ggsave("../images/gsw-shot-charts.pdf", height = 7, width = 8)
ggsave("../images/gsw-shot-charts.png", height = 7, width = 8)





























