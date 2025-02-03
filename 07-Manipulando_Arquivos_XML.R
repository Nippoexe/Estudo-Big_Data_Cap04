# Manipulação de Arquivos XML

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

# Instala o pacote
install.packages("XML")

# Carrega o pacote
library("XML")

# Pacote necessário para manipular o conteúdo xml
library("methods")

# Carrega o arquivo
setwd(input_path)
resultado <- xmlParse(file = "funcionarios.xml")

# Visualiza
print(resultado)

# Extrai o nó raiz
rootnode <- xmlRoot(resultado)
print(rootnode[1])

# Número de nós no arquivo
rootsize <- xmlSize(rootnode)

# Visualiza
print(rootsize)

# Primeiro elemento do primeiro nó
print(rootnode[[1]][[1]])

# Quinto elemento do primeiro nó
print(rootnode[[1]][[5]])

# Segundo elemento do terceiro nó
print(rootnode[[3]][[2]])

# Carrega o arquivo xml como dataframe
xmldataframe <- xmlToDataFrame("funcionarios.xml")
print(xmldataframe)


