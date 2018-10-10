#########EXERCÍCIO 2#########
#install.packages("readxl")
library(readxl)
dois<-read_excel("dados/exercicio2.xls")

table(dois$Casas)
jpeg("exercicio2.jpg")
hist(dois$Casas, col = rainbow(11), xlab = "Numero de casas")
dev.off()

graph<-mean(dois$Casas)
graph<-c(graph, sd(dois$Casas))
graph<-c(graph, median(dois$Casas))
graph<-c(graph, var(dois$Casas))
graph<-c(graph, min(dois$Casas))
graph<-c(graph, max(dois$Casas))
graph<-c(graph, quantile(dois$Casas, 0.25))
graph<-c(graph, quantile(dois$Casas, 0.75))

#inicia o salvamento em .jpg
jpeg("exercicio2_medidas.jpg")
#plota o gráfico de barras com as labels. "Las = 1" vira o texto dos labels
barplot(graph, main = "Exercicio 1",
        horiz = TRUE, cex.names=0.5,
        names.arg = c("Media", "Desvio-padrao", "Mediana", "Variancia", "Minimo", "Maximo", "Q1", "Q3"),
        col=rainbow(8), las = 1)
dev.off()