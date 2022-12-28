setwd("/home/uff/Área de Trabalho/arquivos/lorena/dados_serrapilheira")

df <- read.csv("dados.txt", h=T, sep="\t")

head(df)

shapiro.test(df$peso_seco_g)
qqnorm(df$peso_seco_g)
qqline(df$peso_seco_g, col="red")

install.packages("GFD")
library(GFD)

boxplot(df$peso_seco_g ~ df$areas * df$coleta)

kruskal.test(df$peso_seco_g ~ df$areas)
kruskal.test(df$peso_seco_g ~ df$coleta)

wilcox.test(df$peso_seco_g ~ df$coleta)

GFD(df$peso_seco_g ~ df$areas * df$coleta)
