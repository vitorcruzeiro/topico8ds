#########EXERCÍCIO 8#########
#install.packages("readxl")
library(readxl)
oitavo<-read_excel("dados/exercicio8.xls")
oitavo<-data.matrix(oitavo)

table(oitavo)

jpeg("exercicio8.jpg")
hist(oitavo, breaks = 10, col = rainbow(10), xlab = "Altura",
     main = "Exercicio 8")
dev.off()