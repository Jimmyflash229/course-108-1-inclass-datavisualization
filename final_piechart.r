#################### final project_pie chart by ZiWen ###################
library(ggplot2)
library(plotly)
library(dplyr)
library("RColorBrewer")
############# Statistic #############
s_gradepie <- gradeData[c(1:62),c("系級","科目名稱","學分數","開課系所","必選修類別（必／選／通）")]
spie <- data.frame("Categorie" = c("統計","資料科學","外語"),"Num" = c(81,15,12),row.names = NULL)
spiegraph <- plot_ly(spie, labels = ~Categorie, values = ~Num, type = 'pie',
             textposition = 'inside',
             textinfo = 'label+percent',
             insidetextfont = list(color = '#FFFFFF'),
             hoverinfo = 'text',
             text = ~paste(Num,' 學分數'),
             marker = list(colors = c('#69A6EC', '#85AEE4', '#7269EC'),
                           line = list(color = '#FFFFFF', width = 1)),
             #The 'pull' attribute can also be used to create space between the sectors
             showlegend = FALSE) %>%
  layout(title = '選課方向',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

spiegraph
############# Economics #############
e_gradepie <- gradeData[c(63:129),c("系級","科目名稱","學分數","開課系所","必選修類別（必／選／通）")]
epie <- data.frame("Categorie" = c("經濟","金融","外語"),"Num" = c(54,21,22),row.names = NULL)
epiegraph <- plot_ly(epie, labels = ~Categorie, values = ~Num, type = 'pie',
                     textposition = 'inside',
                     textinfo = 'label+percent',
                     insidetextfont = list(color = '#FFFFFF'),
                     hoverinfo = 'text',
                     text = ~paste(Num,' 學分數'),
                     marker = list(colors = c('#00CC66', '#00994C', '#22C172'),
                                   line = list(color = '#FFFFFF', width = 1)),
                     #The 'pull' attribute can also be used to create space between the sectors
                     showlegend = FALSE) %>%
  layout(title = '選課方向',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

epiegraph
############# Accounting #############
a_gradepie <- gradeData[c(130:190),c("系級","科目名稱","學分數","開課系所","必選修類別（必／選／通）")]
apie <- data.frame("Categorie" = c("會計","金融經濟"),"Num" = c(66,30),row.names = NULL)
apiegraph <- plot_ly(apie, labels = ~Categorie, values = ~Num, type = 'pie',
                     textposition = 'inside',
                     textinfo = 'label+percent',
                     insidetextfont = list(color = '#FFFFFF'),
                     hoverinfo = 'text',
                     text = ~paste(Num,' 學分數'),
                     marker = list(colors = c('#FF6666', '#E95757'),
                                   line = list(color = '#FFFFFF', width = 1)),
                     #The 'pull' attribute can also be used to create space between the sectors
                     showlegend = FALSE) %>%
  layout(title = '選課方向',
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

apiegraph
