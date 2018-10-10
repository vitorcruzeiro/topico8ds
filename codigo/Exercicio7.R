#########EXERCÍCIO 7#########
#install.packages("readxl")
library(readxl)
setimo<-read_excel("dados/exercicio7.xls")

jpeg("exercicio7.jpg")
barplot(setimo$Atendimento, names.arg = setimo$Areas,
        col = rainbow(7), cex.names = 0.7)
dev.off()