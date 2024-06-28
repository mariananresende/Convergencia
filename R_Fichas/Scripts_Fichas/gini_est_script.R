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
gini_est <- read_csv("gini_est.csv")
View(gini_est)

gini_est = rename(gini_est, "AC" = "12")
gini_est = rename(gini_est, "AL" = "27")
gini_est = rename(gini_est, "AM" = "13")
gini_est = rename(gini_est, "AP" = "16")
gini_est = rename(gini_est, "BA" = "29")
gini_est = rename(gini_est, "CE" = "23")
gini_est = rename(gini_est, "DF" = "53")
gini_est = rename(gini_est, "ES" = "32")
gini_est = rename(gini_est, "GO" = "52")
gini_est = rename(gini_est, "MA" = "21")
gini_est = rename(gini_est, "MG" = "31")
gini_est = rename(gini_est, "MS" = "50")
gini_est = rename(gini_est, "MT" = "51")
gini_est = rename(gini_est, "PA" = "15")
gini_est = rename(gini_est, "PB" = "25")
gini_est = rename(gini_est, "PE" = "26")
gini_est = rename(gini_est, "PI" = "22")
gini_est = rename(gini_est, "PR" = "41")
gini_est = rename(gini_est, "RJ" = "33")
gini_est = rename(gini_est, "RN" = "24")
gini_est = rename(gini_est, "RO" = "11")
gini_est = rename(gini_est, "RR" = "14")
gini_est = rename(gini_est, "RS" = "43")
gini_est = rename(gini_est, "SC" = "42")
gini_est = rename(gini_est, "SE" = "28")
gini_est = rename(gini_est, "SP" = "35")
gini_est = rename(gini_est, "TO" = "17")

gini_est<-as_tibble(gini_est)
class(gini_est)

check_data(gini_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2021,
  timeName = "time",
  workDF = "gini_est",
  indicaT = "gini_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_gini_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/gini_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)