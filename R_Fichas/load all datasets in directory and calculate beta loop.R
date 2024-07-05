
#load all datsets and make table

library(readr)
#upload all dataset and unlist
fi <- list.files(">>YOUR DIRECTORY<<",full.names=T)
dat <- lapply(fi,read.csv)
# for (aux in seq(fi))
#   assign(paste0(names(dat[[aux]])[5]),dat[[aux]])

for (aux in seq(fi)){
  dat_name<- paste(gsub(">>YOUR DIRECTORY<<","",fi[[aux]]))
  dat_name<- gsub(".csv", "", dat_name)
  names(dat)[aux]<-dat_name
}   

for (aux_a in names(dat)){
  dat [[aux_a]][["X"]]<-NULL
}


beta_out <- c()
for (auxe in names(dat)) {
  beta_auxe <- beta_conv(as_tibble(dat[[auxe]]),time_0 = 2002, time_t = 2018, all_within = FALSE, timeName = "time")
  beta_out[[auxe]] <- c(auxe,beta_auxe$res$beta1,beta_auxe$res$summary$p.value[2])
}
beta_df1 <-as_tibble(beta_out)
beta_df_final<-as_tibble(t(beta_df1))
names(beta_df_final)[2] <- "beta1"
names(beta_df_final)[1] <- "indicator"
names(beta_df_final)[3] <- "p_value"
