#########EXERCÍCIO 3#########
#install.packages("readxl")
library(readxl)
tres<-read_excel("dados/exercicio3.xls")
table(tres)

vetor<-c()
j<-1
for (numero in tres$Familias) {
  for (i in 1:numero) {
    vetor<-c(vetor, tres$Filhos[j])
  }
  j<-j+1
}

mediana<-vetor[length(vetor)/2]
moda<-tres$Filhos[which(tres$Familias==max(tres$Familias))]

jpeg("exercicio3.jpg")
barplot(c(mediana,moda), col = rainbow(2), 
        names.arg = c("Mediana", "Moda"))
dev.off()