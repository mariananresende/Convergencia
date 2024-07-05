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
women_management_positions_est <- read_csv("women_management_positions_est.csv")
View(women_management_positions_est)

women_management_positions_est <- women_management_positions_est[-1]

women_management_positions_est = rename(women_management_positions_est, "AC" = "12")
women_management_positions_est = rename(women_management_positions_est, "AL" = "27")
women_management_positions_est = rename(women_management_positions_est, "AM" = "13")
women_management_positions_est = rename(women_management_positions_est, "AP" = "16")
women_management_positions_est = rename(women_management_positions_est, "BA" = "29")
women_management_positions_est = rename(women_management_positions_est, "CE" = "23")
women_management_positions_est = rename(women_management_positions_est, "DF" = "53")
women_management_positions_est = rename(women_management_positions_est, "ES" = "32")
women_management_positions_est = rename(women_management_positions_est, "GO" = "52")
women_management_positions_est = rename(women_management_positions_est, "MA" = "21")
women_management_positions_est = rename(women_management_positions_est, "MG" = "31")
women_management_positions_est = rename(women_management_positions_est, "MS" = "50")
women_management_positions_est = rename(women_management_positions_est, "MT" = "51")
women_management_positions_est = rename(women_management_positions_est, "PA" = "15")
women_management_positions_est = rename(women_management_positions_est, "PB" = "25")
women_management_positions_est = rename(women_management_positions_est, "PE" = "26")
women_management_positions_est = rename(women_management_positions_est, "PI" = "22")
women_management_positions_est = rename(women_management_positions_est, "PR" = "41")
women_management_positions_est = rename(women_management_positions_est, "RJ" = "33")
women_management_positions_est = rename(women_management_positions_est, "RN" = "24")
women_management_positions_est = rename(women_management_positions_est, "RO" = "11")
women_management_positions_est = rename(women_management_positions_est, "RR" = "14")
women_management_positions_est = rename(women_management_positions_est, "RS" = "43")
women_management_positions_est = rename(women_management_positions_est, "SC" = "42")
women_management_positions_est = rename(women_management_positions_est, "SE" = "28")
women_management_positions_est = rename(women_management_positions_est, "SP" = "35")
women_management_positions_est = rename(women_management_positions_est, "TO" = "17")

women_management_positions_est<-as_tibble(women_management_positions_est)
class(women_management_positions_est)

check_data(women_management_positions_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2022,
  timeName = "time",
  workDF = "women_management_positions_est",
  indicaT = "women_management_positions_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_women_management_positions_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/women_management_positions_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)