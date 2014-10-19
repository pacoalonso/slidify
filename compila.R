library("slidify")
library("knitr")
library("markdown")

author("pp")
slidify("index.Rmd")
browseURL("index.html")


git init
git add * 
git commit -a -m "Added all of the files"
git remote add origin http://github.com/pacoalonso/slidify.git
git pull
git push origin master
