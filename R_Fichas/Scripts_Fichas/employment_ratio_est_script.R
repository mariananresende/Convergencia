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
employment_ratio_est <- read_csv("employment_ratio_est.csv")
View(employment_ratio_est)

employment_ratio_est = rename(employment_ratio_est, "AC" = "12")
employment_ratio_est = rename(employment_ratio_est, "AL" = "27")
employment_ratio_est = rename(employment_ratio_est, "AM" = "13")
employment_ratio_est = rename(employment_ratio_est, "AP" = "16")
employment_ratio_est = rename(employment_ratio_est, "BA" = "29")
employment_ratio_est = rename(employment_ratio_est, "CE" = "23")
employment_ratio_est = rename(employment_ratio_est, "DF" = "53")
employment_ratio_est = rename(employment_ratio_est, "ES" = "32")
employment_ratio_est = rename(employment_ratio_est, "GO" = "52")
employment_ratio_est = rename(employment_ratio_est, "MA" = "21")
employment_ratio_est = rename(employment_ratio_est, "MG" = "31")
employment_ratio_est = rename(employment_ratio_est, "MS" = "50")
employment_ratio_est = rename(employment_ratio_est, "MT" = "51")
employment_ratio_est = rename(employment_ratio_est, "PA" = "15")
employment_ratio_est = rename(employment_ratio_est, "PB" = "25")
employment_ratio_est = rename(employment_ratio_est, "PE" = "26")
employment_ratio_est = rename(employment_ratio_est, "PI" = "22")
employment_ratio_est = rename(employment_ratio_est, "PR" = "41")
employment_ratio_est = rename(employment_ratio_est, "RJ" = "33")
employment_ratio_est = rename(employment_ratio_est, "RN" = "24")
employment_ratio_est = rename(employment_ratio_est, "RO" = "11")
employment_ratio_est = rename(employment_ratio_est, "RR" = "14")
employment_ratio_est = rename(employment_ratio_est, "RS" = "43")
employment_ratio_est = rename(employment_ratio_est, "SC" = "42")
employment_ratio_est = rename(employment_ratio_est, "SE" = "28")
employment_ratio_est = rename(employment_ratio_est, "SP" = "35")
employment_ratio_est = rename(employment_ratio_est, "TO" = "17")

employment_ratio_est<-as_tibble(employment_ratio_est)
class(employment_ratio_est)

check_data(employment_ratio_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2023,
  timeName = "time",
  workDF = "employment_ratio_est",
  indicaT = "employment_ratio_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_employment_ratio_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/employment_ratio_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)