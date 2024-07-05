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
international_poverty_est <- read_csv("international_poverty_est.csv")
View(international_poverty_est)

international_poverty_est = rename(international_poverty_est, "AC" = "12")
international_poverty_est = rename(international_poverty_est, "AL" = "27")
international_poverty_est = rename(international_poverty_est, "AM" = "13")
international_poverty_est = rename(international_poverty_est, "AP" = "16")
international_poverty_est = rename(international_poverty_est, "BA" = "29")
international_poverty_est = rename(international_poverty_est, "CE" = "23")
international_poverty_est = rename(international_poverty_est, "DF" = "53")
international_poverty_est = rename(international_poverty_est, "ES" = "32")
international_poverty_est = rename(international_poverty_est, "GO" = "52")
international_poverty_est = rename(international_poverty_est, "MA" = "21")
international_poverty_est = rename(international_poverty_est, "MG" = "31")
international_poverty_est = rename(international_poverty_est, "MS" = "50")
international_poverty_est = rename(international_poverty_est, "MT" = "51")
international_poverty_est = rename(international_poverty_est, "PA" = "15")
international_poverty_est = rename(international_poverty_est, "PB" = "25")
international_poverty_est = rename(international_poverty_est, "PE" = "26")
international_poverty_est = rename(international_poverty_est, "PI" = "22")
international_poverty_est = rename(international_poverty_est, "PR" = "41")
international_poverty_est = rename(international_poverty_est, "RJ" = "33")
international_poverty_est = rename(international_poverty_est, "RN" = "24")
international_poverty_est = rename(international_poverty_est, "RO" = "11")
international_poverty_est = rename(international_poverty_est, "RR" = "14")
international_poverty_est = rename(international_poverty_est, "RS" = "43")
international_poverty_est = rename(international_poverty_est, "SC" = "42")
international_poverty_est = rename(international_poverty_est, "SE" = "28")
international_poverty_est = rename(international_poverty_est, "SP" = "35")
international_poverty_est = rename(international_poverty_est, "TO" = "17")

international_poverty_est<-as_tibble(international_poverty_est)
class(international_poverty_est)

check_data(international_poverty_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2022,
  timeName = "time",
  workDF = "international_poverty_est",
  indicaT = "international_poverty_est",
  indiType = c("highBest", "lowBest")[2],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_international_poverty_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/international_poverty_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)