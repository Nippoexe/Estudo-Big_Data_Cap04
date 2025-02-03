# Trabalhando com Arquivos txt - Parte  2

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
projeto_path = "D:/FCDados/[05] - Manipulacao de arquivos/[03] - Projetos/"
input_path = "D:/FCDados/[05] - Manipulacao de arquivos/[01] - InputData/"
output_path = "D:/FCDados/[05] - Manipulacao de arquivos/[02] - OutputData/"

setwd(projeto_path)
getwd()

?read.table
?write.table

search()

# Gerando arquivo
setwd(output_path)
getwd()
write.table(mtcars, file = 'mtcars.txt')
dir()

df_mtcars <- read.table("mtcars.txt")
View(df_mtcars)
dim(df_mtcars)

write.table(mtcars, file = "mtcars2.txt", sep = "|", col.names = NA, qmethod = "double")
list.files()

df_mtcars2 <- read.table("mtcars2.txt")
View(df_mtcars2)

df_mtcars2 <- read.table("mtcars2.txt", sep = '|')
View(df_mtcars2)

df_mtcars2 <- read.table("mtcars2.txt", sep = '|', header = TRUE, encoding = 'UTF-8')
View(df_mtcars2)




