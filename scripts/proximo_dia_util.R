library(lubridate)

proximo_dia_util <- function(data_input) {
  data_input <- as.Date(data_input)
  vetor_datas <- seq.Date(from = data_input, to = data_input + 30, by = "1 day")
  
  feriados <- as.Date(c("2017-12-25", "2017-09-07",
                        "2017-10-12", "2017-11-02",
                        "2017-11-15"))
  n <- length(vetor_datas)
  
  for (i in 1:n) {
    data_loop <- vetor_datas[i]
    if (wday(data_loop) != 1 & wday(data_loop) != 7 & !(data_loop %in% feriados)) {
      return(data_loop)
    } else {
      next
    }
  }
}

proximo_dia_util(today())