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
national_poverty_est <- read_csv("national_poverty_est.csv")
View(national_poverty_est)

national_poverty_est = rename(national_poverty_est, "AC" = "12")
national_poverty_est = rename(national_poverty_est, "AL" = "27")
national_poverty_est = rename(national_poverty_est, "AM" = "13")
national_poverty_est = rename(national_poverty_est, "AP" = "16")
national_poverty_est = rename(national_poverty_est, "BA" = "29")
national_poverty_est = rename(national_poverty_est, "CE" = "23")
national_poverty_est = rename(national_poverty_est, "DF" = "53")
national_poverty_est = rename(national_poverty_est, "ES" = "32")
national_poverty_est = rename(national_poverty_est, "GO" = "52")
national_poverty_est = rename(national_poverty_est, "MA" = "21")
national_poverty_est = rename(national_poverty_est, "MG" = "31")
national_poverty_est = rename(national_poverty_est, "MS" = "50")
national_poverty_est = rename(national_poverty_est, "MT" = "51")
national_poverty_est = rename(national_poverty_est, "PA" = "15")
national_poverty_est = rename(national_poverty_est, "PB" = "25")
national_poverty_est = rename(national_poverty_est, "PE" = "26")
national_poverty_est = rename(national_poverty_est, "PI" = "22")
national_poverty_est = rename(national_poverty_est, "PR" = "41")
national_poverty_est = rename(national_poverty_est, "RJ" = "33")
national_poverty_est = rename(national_poverty_est, "RN" = "24")
national_poverty_est = rename(national_poverty_est, "RO" = "11")
national_poverty_est = rename(national_poverty_est, "RR" = "14")
national_poverty_est = rename(national_poverty_est, "RS" = "43")
national_poverty_est = rename(national_poverty_est, "SC" = "42")
national_poverty_est = rename(national_poverty_est, "SE" = "28")
national_poverty_est = rename(national_poverty_est, "SP" = "35")
national_poverty_est = rename(national_poverty_est, "TO" = "17")

national_poverty_est<-as_tibble(national_poverty_est)
class(national_poverty_est)

check_data(national_poverty_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2022,
  timeName = "time",
  workDF = "national_poverty_est",
  indicaT = "national_poverty_est",
  indiType = c("highBest", "lowBest")[2],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_national_poverty_est",
  outDir = "C:/Users/marcus.santos/Downloads/Fichas R/Fichas Eurofound/national_poverty_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)