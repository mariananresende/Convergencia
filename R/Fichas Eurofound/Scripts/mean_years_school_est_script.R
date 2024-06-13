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
mean_years_school_est <- read_csv("mean_years_school_est.csv")
View(mean_years_school_est)

mean_years_school_est = rename(mean_years_school_est, "AC" = "12")
mean_years_school_est = rename(mean_years_school_est, "AL" = "27")
mean_years_school_est = rename(mean_years_school_est, "AM" = "13")
mean_years_school_est = rename(mean_years_school_est, "AP" = "16")
mean_years_school_est = rename(mean_years_school_est, "BA" = "29")
mean_years_school_est = rename(mean_years_school_est, "CE" = "23")
mean_years_school_est = rename(mean_years_school_est, "DF" = "53")
mean_years_school_est = rename(mean_years_school_est, "ES" = "32")
mean_years_school_est = rename(mean_years_school_est, "GO" = "52")
mean_years_school_est = rename(mean_years_school_est, "MA" = "21")
mean_years_school_est = rename(mean_years_school_est, "MG" = "31")
mean_years_school_est = rename(mean_years_school_est, "MS" = "50")
mean_years_school_est = rename(mean_years_school_est, "MT" = "51")
mean_years_school_est = rename(mean_years_school_est, "PA" = "15")
mean_years_school_est = rename(mean_years_school_est, "PB" = "25")
mean_years_school_est = rename(mean_years_school_est, "PE" = "26")
mean_years_school_est = rename(mean_years_school_est, "PI" = "22")
mean_years_school_est = rename(mean_years_school_est, "PR" = "41")
mean_years_school_est = rename(mean_years_school_est, "RJ" = "33")
mean_years_school_est = rename(mean_years_school_est, "RN" = "24")
mean_years_school_est = rename(mean_years_school_est, "RO" = "11")
mean_years_school_est = rename(mean_years_school_est, "RR" = "14")
mean_years_school_est = rename(mean_years_school_est, "RS" = "43")
mean_years_school_est = rename(mean_years_school_est, "SC" = "42")
mean_years_school_est = rename(mean_years_school_est, "SE" = "28")
mean_years_school_est = rename(mean_years_school_est, "SP" = "35")
mean_years_school_est = rename(mean_years_school_est, "TO" = "17")

mean_years_school_est<-as_tibble(mean_years_school_est)
class(mean_years_school_est)

check_data(mean_years_school_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2021,
  timeName = "time",
  workDF = "mean_years_school_est",
  indicaT = "mean_years_school_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_mean_years_school_est",
  outDir = "C:/Users/marcus.santos/Downloads/Fichas R/Fichas Eurofound/mean_years_school_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)