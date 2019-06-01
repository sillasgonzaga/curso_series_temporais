## respostas


##### 01: Introdução


#### Instale o pacote BETS
# Documentação: https://github.com/pedrocostaferreira/BETS
install.packages("BETS")


#### Carregue os pacotes BETS e forecast
library(BETS)
library(forecast)


#### Use a função BETS.search() para pesquisar series temporais de um tema de sua preferencia
# Exemplo: BETS.search("industria", periodicity = "M", view = TRUE)
BETS.search("agricultura", periodicity = "M", view = TRUE)


#### Após escolher uma série temporal, baixe-a usando a função BETS.get().
x <- BETS.get(7460)

#### Analise os componentes de tendencia, sazonalidade e ciclo usando as funcões mostradas
# no capítulo 1 do curso (plot, ggseasonplot, ggsubseriesplot, ggmonthplot, etc)
plot(x)
ggseasonplot(x)
ggsubseriesplot(x)
ggmonthplot(x)

# Refazendo a analise sem outlier
x <- window(x, start = c(1995, 1))
plot(x)
ggseasonplot(x)
ggsubseriesplot(x)
ggmonthplot(x)






