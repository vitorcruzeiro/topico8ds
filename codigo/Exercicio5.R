#########EXERCÍCIO 5#########
#install.packages("readxl")
library(readxl)
quinto<-read_excel("dados/exercicio5.xls")

jpeg("Exercicio5.jpg")
barplot(quinto$Np, col = rainbow(length(quinto$Marcas)),
        names.arg = quinto$Marcas, main = "Exercicio 5")
dev.off()