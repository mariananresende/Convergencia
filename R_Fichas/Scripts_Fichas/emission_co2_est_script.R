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

emission_co2_est <- read_csv("emission_co2_est.csv")
View(emission_co2_est)

emission_co2_est <- emission_co2_est[-1]

emission_co2_est = rename(emission_co2_est, "AC" = "12")
emission_co2_est = rename(emission_co2_est, "AL" = "27")
emission_co2_est = rename(emission_co2_est, "AM" = "13")
emission_co2_est = rename(emission_co2_est, "AP" = "16")
emission_co2_est = rename(emission_co2_est, "BA" = "29")
emission_co2_est = rename(emission_co2_est, "CE" = "23")
emission_co2_est = rename(emission_co2_est, "DF" = "53")
emission_co2_est = rename(emission_co2_est, "ES" = "32")
emission_co2_est = rename(emission_co2_est, "GO" = "52")
emission_co2_est = rename(emission_co2_est, "MA" = "21")
emission_co2_est = rename(emission_co2_est, "MG" = "31")
emission_co2_est = rename(emission_co2_est, "MS" = "50")
emission_co2_est = rename(emission_co2_est, "MT" = "51")
emission_co2_est = rename(emission_co2_est, "PA" = "15")
emission_co2_est = rename(emission_co2_est, "PB" = "25")
emission_co2_est = rename(emission_co2_est, "PE" = "26")
emission_co2_est = rename(emission_co2_est, "PI" = "22")
emission_co2_est = rename(emission_co2_est, "PR" = "41")
emission_co2_est = rename(emission_co2_est, "RJ" = "33")
emission_co2_est = rename(emission_co2_est, "RN" = "24")
emission_co2_est = rename(emission_co2_est, "RO" = "11")
emission_co2_est = rename(emission_co2_est, "RR" = "14")
emission_co2_est = rename(emission_co2_est, "RS" = "43")
emission_co2_est = rename(emission_co2_est, "SC" = "42")
emission_co2_est = rename(emission_co2_est, "SE" = "28")
emission_co2_est = rename(emission_co2_est, "SP" = "35")
emission_co2_est = rename(emission_co2_est, "TO" = "17")

emission_co2_est<-as_tibble(emission_co2_est)
class(emission_co2_est)

check_data(emission_co2_est)

go_indica_fi(
  time_0 = 2011,
  time_t = 2016,
  timeName = "time",
  workDF = "emission_co2_est",
  indicaT = "emission_co2_est",
  indiType = c("highBest", "lowBest")[2],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_emission_co2_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/emission_co2_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)