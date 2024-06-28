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
rate_gdp_pc_est <- read_csv("rate_gdp_pc_est.csv")
View(rate_gdp_pc_est)

rate_gdp_pc_est = rename(rate_gdp_pc_est, "AC" = "12")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "AL" = "27")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "AM" = "13")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "AP" = "16")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "BA" = "29")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "CE" = "23")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "DF" = "53")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "ES" = "32")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "GO" = "52")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "MA" = "21")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "MG" = "31")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "MS" = "50")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "MT" = "51")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "PA" = "15")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "PB" = "25")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "PE" = "26")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "PI" = "22")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "PR" = "41")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "RJ" = "33")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "RN" = "24")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "RO" = "11")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "RR" = "14")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "RS" = "43")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "SC" = "42")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "SE" = "28")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "SP" = "35")
rate_gdp_pc_est = rename(rate_gdp_pc_est, "TO" = "17")

rate_gdp_pc_est<-as_tibble(rate_gdp_pc_est)
class(rate_gdp_pc_est)

check_data(rate_gdp_pc_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2021,
  timeName = "time",
  workDF = "rate_gdp_pc_est",
  indicaT = "rate_gdp_pc_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_rate_gdp_pc_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/rate_gdp_pc_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)