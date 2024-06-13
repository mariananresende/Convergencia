library(readr)
brown_labour_force_est <- read_csv("brown_labour_force_est.csv")
View(brown_labour_force_est)

brown_labour_force_est <- brown_labour_force_est[-1]

brown_labour_force_est = rename(brown_labour_force_est, "AC" = "12")
brown_labour_force_est = rename(brown_labour_force_est, "AL" = "27")
brown_labour_force_est = rename(brown_labour_force_est, "AM" = "13")
brown_labour_force_est = rename(brown_labour_force_est, "AP" = "16")
brown_labour_force_est = rename(brown_labour_force_est, "BA" = "29")
brown_labour_force_est = rename(brown_labour_force_est, "CE" = "23")
brown_labour_force_est = rename(brown_labour_force_est, "DF" = "53")
brown_labour_force_est = rename(brown_labour_force_est, "ES" = "32")
brown_labour_force_est = rename(brown_labour_force_est, "GO" = "52")
brown_labour_force_est = rename(brown_labour_force_est, "MA" = "21")
brown_labour_force_est = rename(brown_labour_force_est, "MG" = "31")
brown_labour_force_est = rename(brown_labour_force_est, "MS" = "50")
brown_labour_force_est = rename(brown_labour_force_est, "MT" = "51")
brown_labour_force_est = rename(brown_labour_force_est, "PA" = "15")
brown_labour_force_est = rename(brown_labour_force_est, "PB" = "25")
brown_labour_force_est = rename(brown_labour_force_est, "PE" = "26")
brown_labour_force_est = rename(brown_labour_force_est, "PI" = "22")
brown_labour_force_est = rename(brown_labour_force_est, "PR" = "41")
brown_labour_force_est = rename(brown_labour_force_est, "RJ" = "33")
brown_labour_force_est = rename(brown_labour_force_est, "RN" = "24")
brown_labour_force_est = rename(brown_labour_force_est, "RO" = "11")
brown_labour_force_est = rename(brown_labour_force_est, "RR" = "14")
brown_labour_force_est = rename(brown_labour_force_est, "RS" = "43")
brown_labour_force_est = rename(brown_labour_force_est, "SC" = "42")
brown_labour_force_est = rename(brown_labour_force_est, "SE" = "28")
brown_labour_force_est = rename(brown_labour_force_est, "SP" = "35")
brown_labour_force_est = rename(brown_labour_force_est, "TO" = "17")

brown_labour_force_est<-as_tibble(brown_labour_force_est)
class(brown_labour_force_est)

check_data(brown_labour_force_est)

go_indica_fi(
  time_0 = 2012,
  time_t = 2024,
  timeName = "time",
  workDF = "brown_labour_force_est",
  indicaT = "brown_labour_force_est",
  indiType = c("highBest", "lowBest")[1],  #choose one if the indicator needs to go up to improve, 2 if it should go down (e.g. unemployment, homicide rate, etc)
  seleMeasure = "all",
  seleAggre = "custom",
  x_angle = 45,
  data_res_download = FALSE,
  auth = "Marcus",
  dataNow = Sys.time(),
  outFile = "fiche_brown_labour_force_est",
  outDir = "C:/Users/marcus.santos/Downloads/Fichas R/Fichas Eurofound/brown_labour_force_est",
  pdf_out = TRUE,
  workTB = NULL,
  selfContained = FALSE,
  eige_layout = FALSE,
  memStates = "custom"
)