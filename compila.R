library("slidify")
library("knitr")
library("markdown")

author("pp")
slidify("index.Rmd")
browseURL("index.html")

