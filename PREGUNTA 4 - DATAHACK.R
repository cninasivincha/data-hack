library(rvest)
library(dplyr)

link = "https://xkcd.com/archive/"
page = read_html(link)

name = page %>% html_nodes("a") %>% html_text()
name= as.data.frame(name)


sapply(name, function(x) sum(is.na(x)))
grep("   ", name$name, ignore.case=FALSE)

vv<-complete.cases(name)


vv<- as.data.frame(vv)
name[21,1]

lapply(name[12,1],class)
lapply(name, class)
table(vv)
name[22,1]
