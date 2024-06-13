library(dplyr)
library(tidyverse)
library(eurostat)
library(purrr)
library(tibble)
library(tidyr)
library(ggplot2)
library(formattable) 
library(kableExtra)
library(caTools)
library(gridExtra)
library(rmarkdown)
library(flextable)
library(magrittr)
library(knitr)
library(tibble)
library(devtools)
library(tidyverse)
library(eurostat)
library(purrr)
library(ggplot2)
library(dplyr)
library(tidyr)
library(ggplot2)
options(kableExtra.auto_format = FALSE)
library(kableExtra)
library(caTools)
library(broom)
library(gridExtra)
library(flextable)
library(flexmix)
library(officer)
library(leaflet)
library(magrittr)
library(leaflet.extras)
library(cowplot)
library(png)
library(htmltools)
library(htmlwidgets)
library(webshot)
library(webshot2)
library(convergEU)
library(readr)
life_exp_est <- read_csv("life_exp_est.csv")
View(life_exp_est)

life_exp_est = rename(life_exp_est, "AC" = "12")
life_exp_est = rename(life_exp_est, "AL" = "27")
life_exp_est = rename(life_exp_est, "AM" = "13")
life_exp_est = rename(life_exp_est, "AP" = "16")
life_exp_est = rename(life_exp_est, "BA" = "29")
life_exp_est = rename(life_exp_est, "CE" = "23")
life_exp_est = rename(life_exp_est, "DF" = "53")
life_exp_est = rename(life_exp_est, "ES" = "32")
life_exp_est = rename(life_exp_est, "GO" = "52")
life_exp_est = rename(life_exp_est, "MA" = "21")
life_exp_est = rename(life_exp_est, "MG" = "31")
life_exp_est = rename(life_exp_est, "MS" = "50")
life_exp_est = rename(life_exp_est, "MT" = "51")
life_exp_est = rename(life_exp_est, "PA" = "15")
life_exp_est = rename(life_exp_est, "PB" = "25")
life_exp_est = rename(life_exp_est, "PE" = "26")
life_exp_est = rename(life_exp_est, "PI" = "22")
life_exp_est = rename(life_exp_est, "PR" = "41")
life_exp_est = rename(life_exp_est, "RJ" = "33")
life_exp_est = rename(life_exp_est, "RN" = "24")
life_exp_est = rename(life_exp_est, "RO" = "11")
life_exp_est = rename(life_exp_est, "RR" = "14")
life_exp_est = rename(life_exp_est, "RS" = "43")
life_exp_est = rename(life_exp_est, "SC" = "42")
life_exp_est = rename(life_exp_est, "SE" = "28")
life_exp_est = rename(life_exp_est, "SP" = "35")
life_exp_est = rename(life_exp_est, "TO" = "17")

life_exp_est<-as_tibble(life_exp_est)
class(life_exp_est)

check_data(life_exp_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2021,
  timeName = "time",
  workDF = "life_exp_est",
  indicaT = "life_exp_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_life_exp_est",
  outDir = "C:/Users/marcus.santos/Downloads/Fichas R/Fichas Eurofound/life_exp_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)