#########EXERCÍCIO 1#########
#install.packages("readxl")
library(readxl)

um<-read_excel("dados/exercicio1.xls")

graph<-mean(um$`Taxas de juros`)
graph<-c(graph, sd(um$`Taxas de juros`))
graph<-c(graph, median(um$`Taxas de juros`))
graph<-c(graph, var(um$`Taxas de juros`))
graph<-c(graph, min(um$`Taxas de juros`))
graph<-c(graph, max(um$`Taxas de juros`))
graph<-c(graph, quantile(um$`Taxas de juros`, 0.25))
graph<-c(graph, quantile(um$`Taxas de juros`, 0.75))

#deixa o texto na horizontal


#inicia o salvamento em .jpg
jpeg("exercicio1.jpg")
#plota o gráfico de barras com as labels. "Las = 1" vira o texto dos labels
barplot(graph, main = "Exercicio 1",
        horiz = TRUE, cex.names=0.5,
        names.arg = c("Media", "Desvio-padrao", "Mediana", "Variancia", "Minimo", "Maximo", "Q1", "Q3"),
        col=rainbow(8), las = 1)
dev.off()

