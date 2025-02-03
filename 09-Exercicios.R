# Solução Lista de Exercícios

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
projeto_path = "D:/FCDados/[05] - Manipulacao de arquivos/[03] - Projetos/"
input_path = "D:/FCDados/[05] - Manipulacao de arquivos/[01] - InputData/"
output_path = "D:/FCDados/[05] - Manipulacao de arquivos/[02] - OutputData/"
setwd(projeto_path)

setwd(output_path)
# Exercicio 1 - Encontre e faça a correção do erro na instrução abaixo:
write.table(mtcars, file = "mtcars2.txt", sep = "|", col.names = NA, qmethod = "double")
View(mtcars)

# Exercicio 2 - Encontre e faça a correção do erro na instrução abaixo:
library(readr)
df_iris <- read_csv("iris.csv", col_types = list(
  Sepal.Length = col_double(),
  Sepal.Width = col_double(),
  Petal.Length = col_double(),
  Petal.Width = col_double(),
  Species = col_factor(c("setosa", "versicolor", "virginica"))
))

# Exercício 3 - Abaixo você encontra dois histogramas criados separadamente.
# Mas isso dificulta a comparação das distribuições. Crie um novo plot que faça a união 
# de ambos histogramas em apenas uma área de plotagem.

# Dados aleatórios
dataset1=rnorm(4000 , 100 , 30)     
dataset2=rnorm(4000 , 200 , 30) 

# Histogramas
par(mfrow=c(1,1))
x <- hist(dataset1, breaks=30 , xlim=c(0,300) , col=rgb(1,0,0,0.5) , xlab="Altura" , ylab="Peso" , main="" )
y <- hist(dataset2, add = TRUE, breaks=30 , xlim=c(0,300) , col=rgb(0,0,1,0.5) , xlab="Altura" , ylab="Peso" , main="")

# Exercício 4 - Encontre e corrija o erro no gráfico abaixo
install.packages("plotly")
library(plotly)
head(iris)

plot_ly(iris, 
        x = ~Petal.Length, 
        y = ~Petal.Width,  
        type="scatter", 
        mode = "markers" , 
        color = as.factor(iris$Species) , marker=list(size=20 , opacity=0.5))


# Exercício 5 - Em anexo você encontra o arquivo exercicio5.png. Crie o gráfico que resulta nesta imagem.

library(plotly)
# volcano is a numeric matrix that ships with R
fig <- plot_ly(z = volcano, type = "surface")
fig
View(volcano)
dim(volcano)

?plot_ly

# Exercício 6 - Carregue o arquivo input.json anexo a este script e imprima o conteúdo no console
# Dica: Use o pacote rjson
library(rjson)

?rjson
setwd(input_path)
json_data <- fromJSON(file = "input.json")
json_data

# Exercício 7 - Converta o objeto criado ao carregar o arquivo json do exercício anterior 
# em um dataframe e imprima o conteúdo no console.
df <- as.data.frame(json_data)
df

# Exercício 8 - Carregue o arquivo input.xml anexo a este script.
# Dica: Use o pacote XML
library("XML")
??xml

resultado <- xmlParse("input.xml")
resultado
# Exercício 9 - Converta o objeto criado no exercício anterior em um dataframe
resultado2 <- xmlToDataFrame(resultado)
resultado2

# Exercício 10 - Carregue o arquivo input.csv em anexo e então responda às seguintes perguntas:
library("readr")
df_input <- read_csv("input.csv")
df_input
readr

# Pergunta 1 - Quantas linhas e quantas colunas tem o objeto resultante em R?
dim(df_input)
# [8,5]

# Pergunta 2 - Qual o maior salário?
a <- max(df_input$salary)
a
# 843.25

# Pergunta 3 - Imprima no console o registro da pessoa com o maior salário.
df_maior <- subset.data.frame(df_input, salary == a)
df_maior


# Pergunta 4 - Imprima no console todas as pessoas que trabalham no departamento de IT.
df_IT <- subset.data.frame(df_input, dept == "IT")
df_IT


# Pergunta 5 - Imprima no console as pessoas do departamento de IT com salário superior a 600. 
df_maior_IT <- subset.data.frame(df_input, salary >= 600 & dept == "IT")
df_maior_IT
