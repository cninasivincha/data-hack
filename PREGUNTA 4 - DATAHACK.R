library(rvest)
library(dplyr)

link = "https://xkcd.com/archive/"
page = read_html(link)

name = page %>% html_nodes("a") %>% html_text()
name= as.data.frame(name)

name<-name %>%
  mutate(name=replace(name, name=="", "Blanco")) %>%
  as.data.frame()

Blanco<-as.data.frame(grep("Blanco", name$name, ignore.case=FALSE))
a<-Blanco[2,]
b<-Blanco[3,]

name<-as.data.frame(name[a+1:b,])
colnames(name)[1] <- 'Animes' 
View(name)