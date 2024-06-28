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
idhm_est <- read_csv("idhm_est.csv")
View(idhm_est)

idhm_est = rename(idhm_est, "AC" = "12")
idhm_est = rename(idhm_est, "AL" = "27")
idhm_est = rename(idhm_est, "AM" = "13")
idhm_est = rename(idhm_est, "AP" = "16")
idhm_est = rename(idhm_est, "BA" = "29")
idhm_est = rename(idhm_est, "CE" = "23")
idhm_est = rename(idhm_est, "DF" = "53")
idhm_est = rename(idhm_est, "ES" = "32")
idhm_est = rename(idhm_est, "GO" = "52")
idhm_est = rename(idhm_est, "MA" = "21")
idhm_est = rename(idhm_est, "MG" = "31")
idhm_est = rename(idhm_est, "MS" = "50")
idhm_est = rename(idhm_est, "MT" = "51")
idhm_est = rename(idhm_est, "PA" = "15")
idhm_est = rename(idhm_est, "PB" = "25")
idhm_est = rename(idhm_est, "PE" = "26")
idhm_est = rename(idhm_est, "PI" = "22")
idhm_est = rename(idhm_est, "PR" = "41")
idhm_est = rename(idhm_est, "RJ" = "33")
idhm_est = rename(idhm_est, "RN" = "24")
idhm_est = rename(idhm_est, "RO" = "11")
idhm_est = rename(idhm_est, "RR" = "14")
idhm_est = rename(idhm_est, "RS" = "43")
idhm_est = rename(idhm_est, "SC" = "42")
idhm_est = rename(idhm_est, "SE" = "28")
idhm_est = rename(idhm_est, "SP" = "35")
idhm_est = rename(idhm_est, "TO" = "17")

idhm_est<-as_tibble(idhm_est)
class(idhm_est)

check_data(idhm_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2021,
  timeName = "time",
  workDF = "idhm_est",
  indicaT = "idhm_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_idhm_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/idhm_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)