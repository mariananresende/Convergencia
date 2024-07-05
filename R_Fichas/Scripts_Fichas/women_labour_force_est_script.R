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
women_labour_force_est <- read_csv("women_labour_force_est.csv")
View(women_labour_force_est)

women_labour_force_est <- women_labour_force_est[-1]

women_labour_force_est = rename(women_labour_force_est, "AC" = "12")
women_labour_force_est = rename(women_labour_force_est, "AL" = "27")
women_labour_force_est = rename(women_labour_force_est, "AM" = "13")
women_labour_force_est = rename(women_labour_force_est, "AP" = "16")
women_labour_force_est = rename(women_labour_force_est, "BA" = "29")
women_labour_force_est = rename(women_labour_force_est, "CE" = "23")
women_labour_force_est = rename(women_labour_force_est, "DF" = "53")
women_labour_force_est = rename(women_labour_force_est, "ES" = "32")
women_labour_force_est = rename(women_labour_force_est, "GO" = "52")
women_labour_force_est = rename(women_labour_force_est, "MA" = "21")
women_labour_force_est = rename(women_labour_force_est, "MG" = "31")
women_labour_force_est = rename(women_labour_force_est, "MS" = "50")
women_labour_force_est = rename(women_labour_force_est, "MT" = "51")
women_labour_force_est = rename(women_labour_force_est, "PA" = "15")
women_labour_force_est = rename(women_labour_force_est, "PB" = "25")
women_labour_force_est = rename(women_labour_force_est, "PE" = "26")
women_labour_force_est = rename(women_labour_force_est, "PI" = "22")
women_labour_force_est = rename(women_labour_force_est, "PR" = "41")
women_labour_force_est = rename(women_labour_force_est, "RJ" = "33")
women_labour_force_est = rename(women_labour_force_est, "RN" = "24")
women_labour_force_est = rename(women_labour_force_est, "RO" = "11")
women_labour_force_est = rename(women_labour_force_est, "RR" = "14")
women_labour_force_est = rename(women_labour_force_est, "RS" = "43")
women_labour_force_est = rename(women_labour_force_est, "SC" = "42")
women_labour_force_est = rename(women_labour_force_est, "SE" = "28")
women_labour_force_est = rename(women_labour_force_est, "SP" = "35")
women_labour_force_est = rename(women_labour_force_est, "TO" = "17")

women_labour_force_est<-as_tibble(women_labour_force_est)
class(women_labour_force_est)

check_data(women_labour_force_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2024,
  timeName = "time",
  workDF = "women_labour_force_est",
  indicaT = "women_labour_force_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_women_labour_force_est",
  outDir = "C:/Users/marcus.santos/Downloads/Bases/Fichas/women_labour_force_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)