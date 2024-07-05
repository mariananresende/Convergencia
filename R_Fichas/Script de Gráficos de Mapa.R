if(!require(pacman)){install.packages("pacman")}
pacman :: p_load(tidyverse, geobr)

mem_cluster = read_csv("member_states_cluster.csv")

glimpse(mem_cluster)

mem_cluster = mem_cluster |>
  select("id", "2022")

brasil = read_state(year = 2020)

ggplot()+
  geom_sf(data = brasil, aes(geometry = geom),
          fill = 'darkslategray1', color = 'black')+
  theme_minimal()+
  theme(panel.grid = element_blank(),
        axis.text = element_blank())

mem_cluster_prop = 
  dplyr :: left_join(mem_cluster, brasil,
                     by=c("id" = "abbrev_state"))

mem_cluster_prop = rename(mem_cluster_prop, ano = "2022")

ggplot()+
  geom_sf(data = mem_cluster_prop, aes(geometry = geom,
                                       fill = ano))+
  scale_fill_gradient(low = "white", high = "#2D3E50")+
  labs(title = "Cluster da Participação de Mulheres em Cargos Gerenciais ", fill = "Cluster")+
  theme_minimal()+
  theme(panel.grid = element_blank(),
        axis.text = element_blank(),
        panel.border = element_rect(color = "aliceblue",
                                    fill = NA,
                                    size = 1),
        plot.title = element_text(hjust=0.5))