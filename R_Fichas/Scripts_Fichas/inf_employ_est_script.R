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
inf_employ_est <- read_csv("inf_employ_est.csv")
View(inf_employ_est)

inf_employ_est = rename(inf_employ_est, "AC" = "12")
inf_employ_est = rename(inf_employ_est, "AL" = "27")
inf_employ_est = rename(inf_employ_est, "AM" = "13")
inf_employ_est = rename(inf_employ_est, "AP" = "16")
inf_employ_est = rename(inf_employ_est, "BA" = "29")
inf_employ_est = rename(inf_employ_est, "CE" = "23")
inf_employ_est = rename(inf_employ_est, "DF" = "53")
inf_employ_est = rename(inf_employ_est, "ES" = "32")
inf_employ_est = rename(inf_employ_est, "GO" = "52")
inf_employ_est = rename(inf_employ_est, "MA" = "21")
inf_employ_est = rename(inf_employ_est, "MG" = "31")
inf_employ_est = rename(inf_employ_est, "MS" = "50")
inf_employ_est = rename(inf_employ_est, "MT" = "51")
inf_employ_est = rename(inf_employ_est, "PA" = "15")
inf_employ_est = rename(inf_employ_est, "PB" = "25")
inf_employ_est = rename(inf_employ_est, "PE" = "26")
inf_employ_est = rename(inf_employ_est, "PI" = "22")
inf_employ_est = rename(inf_employ_est, "PR" = "41")
inf_employ_est = rename(inf_employ_est, "RJ" = "33")
inf_employ_est = rename(inf_employ_est, "RN" = "24")
inf_employ_est = rename(inf_employ_est, "RO" = "11")
inf_employ_est = rename(inf_employ_est, "RR" = "14")
inf_employ_est = rename(inf_employ_est, "RS" = "43")
inf_employ_est = rename(inf_employ_est, "SC" = "42")
inf_employ_est = rename(inf_employ_est, "SE" = "28")
inf_employ_est = rename(inf_employ_est, "SP" = "35")
inf_employ_est = rename(inf_employ_est, "TO" = "17")

inf_employ_est<-as_tibble(inf_employ_est)
class(inf_employ_est)

check_data(inf_employ_est)

go_indica_fi(
  time_0 = 2016,
  time_t = 2023,
  timeName = "time",
  workDF = "inf_employ_est",
  indicaT = "inf_employ_est",
  indiType = c("highBest", "lowBest")[2],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_inf_employ_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/inf_employ_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)