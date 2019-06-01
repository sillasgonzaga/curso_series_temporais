#### 02 - linguagem R: exercicios tidyverse
library(tidyverse)
library(magrittr)

#### O codigo abaixo cria um dataframe em um formato pessimo para se trabalhar (untidy)
# Vamos usa-lo para mostrar como funcionam as principais funcões do tidyverse
valores <- matrix(c(rnorm(144, mean = 0, sd = 1), rnorm(144, mean = 5, sd = 2)),
                  ncol = 12, byrow = TRUE)
df <- as.data.frame(valores)
colnames(df) <- 2005:2016
df <- cbind(mes = 1:12, df, produto = rep(c("A", "B"), each = 12))

# Suponha que você queira fazer um grafico da variável valor ao longo do tempo para cada
# um dos produtos 'a' e 'b'.
# Com os dados no formato atual, isso seria muito dificil. Precisamos o deixar...
# no formato tidy.

# Converta o data frame df para o formato tidy usando a funcao gather().
# Salve na variavel df_long

# crie uma coluna data para converter o ano e mes em formato Date
# (vai ficar mais facil fazer um grafico de serie temporal no ggplot2)
# Use o pipe %<>% para evitar repeticoes

# ordene os dados de acordo com a coluna produto (decrescente) e data (crescente)

# filtre as linhas referentes ao produto 'a'. salve no dataframe df_long_a


# use o dataframe df_long para plotar a curva dos produtos 'a' e 'b' separadamente,
# mas em um mesmo grafico (use tanto o argumento color de aes ou a funcao facet_wrap)
# bonus: faça uma curva de tendencia para cada produto
