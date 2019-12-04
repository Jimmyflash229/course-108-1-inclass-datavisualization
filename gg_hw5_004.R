load(url("https://github.com/tpemartin/course-108-1-inclass-datavisualization/blob/master/%E4%BD%9C%E5%93%81%E5%B1%95%E7%A4%BA/homework5/graphData_homework5_004.Rda?raw=true"))
## ----graph, echo=T, eval=T-----------------------------------------------


graphListP <- list()
graphListD$myGrade %>% 
  ggplot() + 
  geom_bar(
    mapping = aes(
      x = 學年期, 
      y = 總修學分
    ), 
    stat = "identity", 
    width = 0.6, 
    fill = "#AAAAAA"
  ) + 
  geom_bar(
    mapping = aes(
      x = 學年期, 
      y = 實得學分, 
      fill = 學位
    ), 
    stat = "identity", 
    width = 0.6
  ) -> 
  graphListP$myCredit_base
qualitative_hcl(n = 2, h = c(-140, 0), c = 100, l = 60, register = "godPalette_2Qua")

graphListP$myCredit_base + 
  scale_fill_discrete_qualitative(palette = "godpalette_2Qua", nmax = 2, rev = F) + 
  #顛倒顏色要在這下
  scale_y_continuous(
    limits = c(0,55), 
    expand = expand_scale(add = c(0, 0))
  ) + 
  theme_bw() -> 
  graphListP$myCredit_1
graphListP$myCredit_1 + 
  geom_path(
    mapping = aes(
      x = 學年期, 
      y = 歷年成績 - 45, 
      group = "a"   #須宣告所有資料為一群
    ), 
    color = "#DCDCDC", 
    size = 2
  ) + 
  geom_point(
    mapping = aes(
      x = 學年期, 
      y = 歷年成績 - 45, 
      color = 學位
    ), 
    size = 2
  ) + 
  geom_text(
    mapping = aes(
      x = 學年期, 
      y = 歷年成績 - 44, 
      label = 歷年成績, 
      color = 學位
    ), 
    vjust = 0, 
    size = 3
  ) + 
  scale_color_discrete_qualitative(palette = "godpalette_2Qua", nmax = 2, rev = F) -> 
  graphListP$myCredit_2
graphListP$myCredit_2 + 
  #調整legend
  theme(
    legend.position = c(0.1, 0.85), 
    legend.background = element_blank(), 
    legend.title = element_blank(), 
    legend.key.size = unit(0.8, "cm")
  ) + 
  #清理輔助線
  theme(
    panel.border = element_blank(), 
    panel.grid.minor = element_blank(), 
    panel.grid.major.x = element_blank()
  ) + 
  #清理格線
  theme(
    axis.title = element_blank(), 
    axis.ticks = element_blank(), 
    axis.text.y = element_blank()
  ) -> 
  graphListP$myCredit_3
graphListP$myCredit_3 + 
  geom_hline(
    yintercept = 0
  ) + 
  geom_hline(
    yintercept = 20, 
    color = "red", 
    linetype = "58"
  ) + 
  geom_hline(
    yintercept = 35, 
    color = "red", 
    linetype = "58"
  ) + 
  annotate(
    "text", x = "大一上", y = 21, 
    label = "20學分", 
    color = "red", 
    hjust = 0.6, 
    vjust = 0
  ) + 
  annotate(
    "text", x = "碩一下", y = 36, 
    label = "80分", 
    color = "red", 
    hjust = 0, 
    vjust = 0
  ) -> 
  graphListP$myCredit_4
graphListP$myCredit_4 + 
  labs(
    title = "歷年學業表現", 
    subtitle = "學分數與成績趨勢"
  ) + 
  theme(
    plot.title = element_text(hjust = 0.5, size = 20), 
    plot.subtitle = element_text(hjust = 0.5, color = "#888888"), 
    aspect.ratio = 1/1.414, 
    axis.text.x = element_text(color = "black")
  ) -> 
  gg_hw5_004

gg_hw5_004
