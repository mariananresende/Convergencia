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
homicide_rate_bwomen_est <- read_csv("homicide_rate_bwomen_est.csv")
View(homicide_rate_bwomen_est)

homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "AC" = "12")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "AL" = "27")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "AM" = "13")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "AP" = "16")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "BA" = "29")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "CE" = "23")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "DF" = "53")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "ES" = "32")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "GO" = "52")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "MA" = "21")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "MG" = "31")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "MS" = "50")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "MT" = "51")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "PA" = "15")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "PB" = "25")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "PE" = "26")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "PI" = "22")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "PR" = "41")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "RJ" = "33")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "RN" = "24")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "RO" = "11")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "RR" = "14")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "RS" = "43")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "SC" = "42")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "SE" = "28")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "SP" = "35")
homicide_rate_bwomen_est = rename(homicide_rate_bwomen_est, "TO" = "17")

homicide_rate_bwomen_est<-as_tibble(homicide_rate_bwomen_est)
class(homicide_rate_bwomen_est)

check_data(homicide_rate_bwomen_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2021,
  timeName = "time",
  workDF = "homicide_rate_bwomen_est",
  indicaT = "homicide_rate_bwomen_est",
  indiType = c("highBest", "lowBest")[2],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_homicide_rate_bwomen_est",
  outDir = "C:/Users/marcus.santos/Downloads/Fichas R/Fichas Eurofound/homicide_rate_bwomen_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)