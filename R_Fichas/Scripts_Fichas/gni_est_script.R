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
gni_est <- read_csv("gni_est.csv")
View(gni_est)

gni_est = rename(gni_est, "AC" = "12")
gni_est = rename(gni_est, "AL" = "27")
gni_est = rename(gni_est, "AM" = "13")
gni_est = rename(gni_est, "AP" = "16")
gni_est = rename(gni_est, "BA" = "29")
gni_est = rename(gni_est, "CE" = "23")
gni_est = rename(gni_est, "DF" = "53")
gni_est = rename(gni_est, "ES" = "32")
gni_est = rename(gni_est, "GO" = "52")
gni_est = rename(gni_est, "MA" = "21")
gni_est = rename(gni_est, "MG" = "31")
gni_est = rename(gni_est, "MS" = "50")
gni_est = rename(gni_est, "MT" = "51")
gni_est = rename(gni_est, "PA" = "15")
gni_est = rename(gni_est, "PB" = "25")
gni_est = rename(gni_est, "PE" = "26")
gni_est = rename(gni_est, "PI" = "22")
gni_est = rename(gni_est, "PR" = "41")
gni_est = rename(gni_est, "RJ" = "33")
gni_est = rename(gni_est, "RN" = "24")
gni_est = rename(gni_est, "RO" = "11")
gni_est = rename(gni_est, "RR" = "14")
gni_est = rename(gni_est, "RS" = "43")
gni_est = rename(gni_est, "SC" = "42")
gni_est = rename(gni_est, "SE" = "28")
gni_est = rename(gni_est, "SP" = "35")
gni_est = rename(gni_est, "TO" = "17")

gni_est<-as_tibble(gni_est)
class(gni_est)

check_data(gni_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2021,
  timeName = "time",
  workDF = "gni_est",
  indicaT = "gni_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_gni_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/gni_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)