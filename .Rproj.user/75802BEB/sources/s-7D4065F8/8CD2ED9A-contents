#########EXERCÍCIO 4#########
#install.packages("readxl")
library(readxl)
quatro<-read_excel("dados/exercicio4.xls")

table(quatro)

jpeg("exercicio4.jpg")
hist(quatro$Salarios, col = rainbow(length(quatro$Salarios)),
     breaks = 9, main = "Exercicio 4", xlab = "Quantia")
dev.off()
