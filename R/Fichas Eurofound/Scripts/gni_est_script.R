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
fixed_broadband_est <- read_csv("fixed_broadband_est.csv")
View(fixed_broadband_est)

fixed_broadband_est = rename(fixed_broadband_est, "AC" = "12")
fixed_broadband_est = rename(fixed_broadband_est, "AL" = "27")
fixed_broadband_est = rename(fixed_broadband_est, "AM" = "13")
fixed_broadband_est = rename(fixed_broadband_est, "AP" = "16")
fixed_broadband_est = rename(fixed_broadband_est, "BA" = "29")
fixed_broadband_est = rename(fixed_broadband_est, "CE" = "23")
fixed_broadband_est = rename(fixed_broadband_est, "DF" = "53")
fixed_broadband_est = rename(fixed_broadband_est, "ES" = "32")
fixed_broadband_est = rename(fixed_broadband_est, "GO" = "52")
fixed_broadband_est = rename(fixed_broadband_est, "MA" = "21")
fixed_broadband_est = rename(fixed_broadband_est, "MG" = "31")
fixed_broadband_est = rename(fixed_broadband_est, "MS" = "50")
fixed_broadband_est = rename(fixed_broadband_est, "MT" = "51")
fixed_broadband_est = rename(fixed_broadband_est, "PA" = "15")
fixed_broadband_est = rename(fixed_broadband_est, "PB" = "25")
fixed_broadband_est = rename(fixed_broadband_est, "PE" = "26")
fixed_broadband_est = rename(fixed_broadband_est, "PI" = "22")
fixed_broadband_est = rename(fixed_broadband_est, "PR" = "41")
fixed_broadband_est = rename(fixed_broadband_est, "RJ" = "33")
fixed_broadband_est = rename(fixed_broadband_est, "RN" = "24")
fixed_broadband_est = rename(fixed_broadband_est, "RO" = "11")
fixed_broadband_est = rename(fixed_broadband_est, "RR" = "14")
fixed_broadband_est = rename(fixed_broadband_est, "RS" = "43")
fixed_broadband_est = rename(fixed_broadband_est, "SC" = "42")
fixed_broadband_est = rename(fixed_broadband_est, "SE" = "28")
fixed_broadband_est = rename(fixed_broadband_est, "SP" = "35")
fixed_broadband_est = rename(fixed_broadband_est, "TO" = "17")

fixed_broadband_est<-as_tibble(fixed_broadband_est)
class(fixed_broadband_est)

check_data(fixed_broadband_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2021,
  timeName = "time",
  workDF = "fixed_broadband_est",
  indicaT = "fixed_broadband_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_fixed_broadband_est",
  outDir = "C:/Users/marcus.santos/Downloads/Fichas R/Fichas Eurofound/fixed_broadband_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)