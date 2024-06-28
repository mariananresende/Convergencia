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
internet_access_est <- read_csv("internet_access_est.csv")
View(internet_access_est)

internet_access_est <- internet_access_est[-1]

internet_access_est = rename(internet_access_est, "AC" = "12")
internet_access_est = rename(internet_access_est, "AL" = "27")
internet_access_est = rename(internet_access_est, "AM" = "13")
internet_access_est = rename(internet_access_est, "AP" = "16")
internet_access_est = rename(internet_access_est, "BA" = "29")
internet_access_est = rename(internet_access_est, "CE" = "23")
internet_access_est = rename(internet_access_est, "DF" = "53")
internet_access_est = rename(internet_access_est, "ES" = "32")
internet_access_est = rename(internet_access_est, "GO" = "52")
internet_access_est = rename(internet_access_est, "MA" = "21")
internet_access_est = rename(internet_access_est, "MG" = "31")
internet_access_est = rename(internet_access_est, "MS" = "50")
internet_access_est = rename(internet_access_est, "MT" = "51")
internet_access_est = rename(internet_access_est, "PA" = "15")
internet_access_est = rename(internet_access_est, "PB" = "25")
internet_access_est = rename(internet_access_est, "PE" = "26")
internet_access_est = rename(internet_access_est, "PI" = "22")
internet_access_est = rename(internet_access_est, "PR" = "41")
internet_access_est = rename(internet_access_est, "RJ" = "33")
internet_access_est = rename(internet_access_est, "RN" = "24")
internet_access_est = rename(internet_access_est, "RO" = "11")
internet_access_est = rename(internet_access_est, "RR" = "14")
internet_access_est = rename(internet_access_est, "RS" = "43")
internet_access_est = rename(internet_access_est, "SC" = "42")
internet_access_est = rename(internet_access_est, "SE" = "28")
internet_access_est = rename(internet_access_est, "SP" = "35")
internet_access_est = rename(internet_access_est, "TO" = "17")

internet_access_est<-as_tibble(internet_access_est)
class(internet_access_est)

check_data(internet_access_est)

go_indica_fi(
  time_0 = 2016,
  time_t = 2022,
  timeName = "time",
  workDF = "internet_access_est",
  indicaT = "internet_access_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_internet_access_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/internet_access_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)